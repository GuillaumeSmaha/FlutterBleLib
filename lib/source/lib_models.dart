part of flutter_ble_lib;

class BleDevice {

  String id;
  String name;
  int mtu;
  int rssi;
  bool isConnected = false;

  BleDevice(this.id, this.name, this.mtu, this.rssi, this.isConnected);

  static BleDevice fromMessage(bleData.BleDeviceMessage bleDeviceMessage) =>
      new BleDevice(bleDeviceMessage.id, bleDeviceMessage.name,
          bleDeviceMessage.mtu, bleDeviceMessage.rssi,
          bleDeviceMessage.isConnected);

  @override
  String toString() {
    return "BleDevice : [macAddress = $id, name = $name, mtu = $mtu, rssi = $rssi, isConnected = $isConnected]";
  }
}

class ScanResult {
  BleDevice bleDevice;
  int rssi;
  Int64 timestampNanos;
  int scanCallbackType;
  int mtu;
  Uint8List raw;

  ScanResult(this.bleDevice,
      this.rssi,
      this.timestampNanos,
      this.scanCallbackType,
      this.raw);

  static ScanResult fromMessage(bleData.ScanResultMessage scanResultMessage) =>
      new ScanResult(
          BleDevice.fromMessage(scanResultMessage.bleDeviceMessage),
          scanResultMessage.rssi,
          scanResultMessage.timestampNanos,
          scanResultMessage.scanCallbackTypeMessage,
          scanResultMessage.raw);


  bool hasTheSameDeviceAs(ScanResult scanResult) =>
      this.bleDevice.id == scanResult.bleDevice.id;


  String rawToString() {
    String res = "";
    this.raw.forEach((b) {
      //res += "0x";
      res += b.toRadixString(16).padLeft(2, '0') + " ";
    });
    return res.trimRight();
  }

  List<int> getServicesUUID16() {
    Uint8List data = this.extractProperty(0x3);
    List<int> res = [];
    if (data.isNotEmpty) {
      for(var i = 0; i < data.length; i += 2) {
        res.add((data[i+1] << 8) + data[i]);
      }
    }
    return res;
  }

  Uint8List extractProperty(int property) {
    if (this.raw.isNotEmpty) {
      for(var i = 0; i < this.raw.length; i++) {

        if (this.raw[i] == 0x00) {
          break;
        }
        else if (this.raw[i+1] == property) {

          return this.raw.sublist(i+2, i + this.raw[i] + 1);
        }
        else {
          i += this.raw[i];
          continue;
        }
      }
    }
    return Uint8List.fromList([]);
  }


  IconData getAppearanceIcon() {
    Uint8List appearanceData = this.extractProperty(0x19);
    Uint8List classOfDeviceData = this.extractProperty(0x0D);
    return BleAppearance.getIcon(appearanceData, classOfDeviceData);
  }

  update(ScanResult scanResultItem) {
    bleDevice
      ..id = scanResultItem.bleDevice.id
      ..name = scanResultItem.bleDevice.name;
    rssi = scanResultItem.rssi;
    timestampNanos = scanResultItem.timestampNanos;
    scanCallbackType = scanResultItem.scanCallbackType;
    raw = scanResultItem.raw;
  }
}

enum LogLevel {
  VERBOSE,
  DEBUG,
  INFO,
  WARNING,
  ERROR,
  NONE,
}

class LogLevelConverter {
  static LogLevel fromMessage(bleData.LogLevelMessage logLevelMessage) {
    switch (logLevelMessage) {
      case bleData.LogLevelMessage.VERBOSE :
        return LogLevel.VERBOSE;
      case bleData.LogLevelMessage.DEBUG :
        return LogLevel.DEBUG;
      case bleData.LogLevelMessage.INFO :
        return LogLevel.INFO;
      case bleData.LogLevelMessage.WARNING :
        return LogLevel.WARNING;
      case bleData.LogLevelMessage.ERROR :
        return LogLevel.ERROR;
      case bleData.LogLevelMessage.NONE :
        return LogLevel.NONE;
      default :
        throw new Exception("Invalid argument $logLevelMessage");
    }
  }

  static bleData.LogLevelMessage toMessage(LogLevel logLevel) {
    switch (logLevel) {
      case LogLevel.VERBOSE :
        return bleData.LogLevelMessage.VERBOSE;
      case LogLevel.DEBUG :
        return bleData.LogLevelMessage.DEBUG;
      case LogLevel.INFO :
        return bleData.LogLevelMessage.INFO;
      case LogLevel.WARNING :
        return bleData.LogLevelMessage.WARNING;
      case LogLevel.ERROR :
        return bleData.LogLevelMessage.ERROR;
      case LogLevel.NONE :
        return bleData.LogLevelMessage.NONE;
      default :
        throw new Exception("Invalid argument $logLevel");
    }
  }
}


enum BluetoothState {
  UNKNOWN,
  RESETTING,
  UNSUPPORTED,
  UNAUTHORIZED,
  POWERED_OFF,
  POWERED_ON,
}


class BluetoothStateConverter {
  static BluetoothState fromMessage(
      bleData.BluetoothStateMessage bluetoothStateMessage) {
    switch (bluetoothStateMessage) {
      case bleData.BluetoothStateMessage.UNKNOWN :
        return BluetoothState.UNKNOWN;
      case bleData.BluetoothStateMessage.RESETTING :
        return BluetoothState.RESETTING;
      case bleData.BluetoothStateMessage.UNSUPPORTED :
        return BluetoothState.UNSUPPORTED;
      case bleData.BluetoothStateMessage.UNAUTHORIZED :
        return BluetoothState.UNAUTHORIZED;
      case bleData.BluetoothStateMessage.POWERED_OFF :
        return BluetoothState.POWERED_OFF;
      case bleData.BluetoothStateMessage.POWERED_ON :
        return BluetoothState.POWERED_ON;
      default :
        throw new Exception("Invalid argument $bluetoothStateMessage");
    }
  }

  static bleData.BluetoothStateMessage toMessage(
      BluetoothState bluetoothState) {
    switch (bluetoothState) {
      case BluetoothState.UNKNOWN :
        return bleData.BluetoothStateMessage.UNKNOWN;
      case BluetoothState.RESETTING :
        return bleData.BluetoothStateMessage.RESETTING;
      case BluetoothState.UNSUPPORTED :
        return bleData.BluetoothStateMessage.UNSUPPORTED;
      case BluetoothState.UNAUTHORIZED :
        return bleData.BluetoothStateMessage.UNAUTHORIZED;
      case BluetoothState.POWERED_OFF :
        return bleData.BluetoothStateMessage.POWERED_OFF;
      case BluetoothState.POWERED_ON :
        return bleData.BluetoothStateMessage.POWERED_ON;
      default :
        throw new Exception("Invalid argument $bluetoothState");
    }
  }
}

class BleService {
  double id;
  String uuid;
  BleDevice device;
  bool isPrimary;

  BleService(this.id, this.uuid, this.device, this.isPrimary);

  static BleService fromMessage(bleData.ServiceMessage serviceMessage) =>
      new BleService(
          serviceMessage.id,
          serviceMessage.uuid,
          BleDevice.fromMessage(serviceMessage.device),
          serviceMessage.isPrimary);

  @override
  String toString() {
    return " BleService : [id = $id, uuid = $uuid, device = $device, isPrimary = $isPrimary]";
  }
}


class Characteristic {
  double id ;
  String uuid;
  int serviceId;
  String serviceUuid;
  String deviceId;
  bool isReadable;
  bool isWritableWithResponse;
  bool isWritableWithoutResponse;
  bool isNotificable;
  bool isIndicatable;
  bool isNotifing;
  String value;

  Characteristic(this.id, this.uuid, this.serviceId, this.serviceUuid,
      this.deviceId, this.isReadable, this.isWritableWithResponse,
      this.isWritableWithoutResponse, this.isNotificable, this.isIndicatable,
      this.isNotifing, this.value);


  static Characteristic fromMessage(bleData.CharacteristicMessage characteristicMessage) =>
      new Characteristic(
          characteristicMessage.id,
          characteristicMessage.uuid,
          characteristicMessage.serviceId,
          characteristicMessage.serviceUuid,
          characteristicMessage.deviceId,
          characteristicMessage.isReadable,
          characteristicMessage.isWritableWithResponse,
          characteristicMessage.isWritableWithoutResponse,
          characteristicMessage.isNotificable,
          characteristicMessage.isIndicatable,
          characteristicMessage.isNotifing,
          characteristicMessage.value);

  @override
  String toString() {
    return "Characteristic : [id = $id, uuid = $uuid, serviceId = $serviceId, serviceUuid = $serviceUuid, deviceId = $deviceId, flags =${_flags()}, value = $value]";
  }

  // Method - debug only
  String _flags() {
    int result = 0x0;
    if (isReadable) result = result | 0x1;
    if (isWritableWithResponse) result = result | 0x10;
    if (isWritableWithoutResponse) result = result | 0x100;
    if (isNotificable) result = result | 0x1000;
    if (isIndicatable) result = result | 0x10000;
    if (isNotifing) result = result | 0x100000;
    return result.toRadixString(2);
  }
}
class MonitorCharacteristic {

  String transactionId;
  Characteristic characteristic;

  MonitorCharacteristic(String this.transactionId, this.characteristic);

  static MonitorCharacteristic fromMessage(
      bleData.MonitorCharacteristicMessage monitorCharacteristicMessage) =>
      new MonitorCharacteristic(
          monitorCharacteristicMessage.transactionId,
          Characteristic.fromMessage(
              monitorCharacteristicMessage.characteristicMessage)
      );

  @override
  String toString() {
    return "MonitorCharacteristic : [transactionId = $transactionId, characteristic = ${characteristic.toString()}";
  }
}

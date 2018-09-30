///
//  Generated code. Do not modify.
//  source: bledata.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

export 'bledata.pbenum.dart';

class ScanDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ScanDataMessage')
    ..a<int>(1, 'scanMode', $pb.PbFieldType.O3)
    ..a<int>(2, 'callbackType', $pb.PbFieldType.O3)
    ..pPS(3, 'uuids')
    ..hasRequiredFields = false
  ;

  ScanDataMessage() : super();
  ScanDataMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ScanDataMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ScanDataMessage clone() => new ScanDataMessage()..mergeFromMessage(this);
  ScanDataMessage copyWith(void Function(ScanDataMessage) updates) => super.copyWith((message) => updates(message as ScanDataMessage));
  $pb.BuilderInfo get info_ => _i;
  static ScanDataMessage create() => new ScanDataMessage();
  static $pb.PbList<ScanDataMessage> createRepeated() => new $pb.PbList<ScanDataMessage>();
  static ScanDataMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ScanDataMessage _defaultInstance;
  static void $checkItem(ScanDataMessage v) {
    if (v is! ScanDataMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  int get scanMode => $_get(0, 0);
  set scanMode(int v) { $_setSignedInt32(0, v); }
  bool hasScanMode() => $_has(0);
  void clearScanMode() => clearField(1);

  int get callbackType => $_get(1, 0);
  set callbackType(int v) { $_setSignedInt32(1, v); }
  bool hasCallbackType() => $_has(1);
  void clearCallbackType() => clearField(2);

  List<String> get uuids => $_getList(2);
}

class BleDeviceMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BleDeviceMessage')
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..a<int>(3, 'rssi', $pb.PbFieldType.O3)
    ..a<int>(4, 'mtu', $pb.PbFieldType.O3)
    ..aOB(5, 'isConnected')
    ..hasRequiredFields = false
  ;

  BleDeviceMessage() : super();
  BleDeviceMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BleDeviceMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BleDeviceMessage clone() => new BleDeviceMessage()..mergeFromMessage(this);
  BleDeviceMessage copyWith(void Function(BleDeviceMessage) updates) => super.copyWith((message) => updates(message as BleDeviceMessage));
  $pb.BuilderInfo get info_ => _i;
  static BleDeviceMessage create() => new BleDeviceMessage();
  static $pb.PbList<BleDeviceMessage> createRepeated() => new $pb.PbList<BleDeviceMessage>();
  static BleDeviceMessage getDefault() => _defaultInstance ??= create()..freeze();
  static BleDeviceMessage _defaultInstance;
  static void $checkItem(BleDeviceMessage v) {
    if (v is! BleDeviceMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  int get rssi => $_get(2, 0);
  set rssi(int v) { $_setSignedInt32(2, v); }
  bool hasRssi() => $_has(2);
  void clearRssi() => clearField(3);

  int get mtu => $_get(3, 0);
  set mtu(int v) { $_setSignedInt32(3, v); }
  bool hasMtu() => $_has(3);
  void clearMtu() => clearField(4);

  bool get isConnected => $_get(4, false);
  set isConnected(bool v) { $_setBool(4, v); }
  bool hasIsConnected() => $_has(4);
  void clearIsConnected() => clearField(5);
}

class ScanResultMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ScanResultMessage')
    ..a<BleDeviceMessage>(1, 'bleDeviceMessage', $pb.PbFieldType.OM, BleDeviceMessage.getDefault, BleDeviceMessage.create)
    ..a<int>(2, 'rssi', $pb.PbFieldType.O3)
    ..a<Int64>(3, 'timestampNanos', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<int>(4, 'scanCallbackTypeMessage', $pb.PbFieldType.O3)
    ..a<List<int>>(5, 'raw', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ScanResultMessage() : super();
  ScanResultMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ScanResultMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ScanResultMessage clone() => new ScanResultMessage()..mergeFromMessage(this);
  ScanResultMessage copyWith(void Function(ScanResultMessage) updates) => super.copyWith((message) => updates(message as ScanResultMessage));
  $pb.BuilderInfo get info_ => _i;
  static ScanResultMessage create() => new ScanResultMessage();
  static $pb.PbList<ScanResultMessage> createRepeated() => new $pb.PbList<ScanResultMessage>();
  static ScanResultMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ScanResultMessage _defaultInstance;
  static void $checkItem(ScanResultMessage v) {
    if (v is! ScanResultMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  BleDeviceMessage get bleDeviceMessage => $_getN(0);
  set bleDeviceMessage(BleDeviceMessage v) { setField(1, v); }
  bool hasBleDeviceMessage() => $_has(0);
  void clearBleDeviceMessage() => clearField(1);

  int get rssi => $_get(1, 0);
  set rssi(int v) { $_setSignedInt32(1, v); }
  bool hasRssi() => $_has(1);
  void clearRssi() => clearField(2);

  Int64 get timestampNanos => $_getI64(2);
  set timestampNanos(Int64 v) { $_setInt64(2, v); }
  bool hasTimestampNanos() => $_has(2);
  void clearTimestampNanos() => clearField(3);

  int get scanCallbackTypeMessage => $_get(3, 0);
  set scanCallbackTypeMessage(int v) { $_setSignedInt32(3, v); }
  bool hasScanCallbackTypeMessage() => $_has(3);
  void clearScanCallbackTypeMessage() => clearField(4);

  List<int> get raw => $_getN(4);
  set raw(List<int> v) { $_setBytes(4, v); }
  bool hasRaw() => $_has(4);
  void clearRaw() => clearField(5);
}

class ConnectToDeviceDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ConnectToDeviceDataMessage')
    ..aOS(1, 'macAddress')
    ..aOB(2, 'isAutoConnect')
    ..a<int>(3, 'requestMtu', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ConnectToDeviceDataMessage() : super();
  ConnectToDeviceDataMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ConnectToDeviceDataMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ConnectToDeviceDataMessage clone() => new ConnectToDeviceDataMessage()..mergeFromMessage(this);
  ConnectToDeviceDataMessage copyWith(void Function(ConnectToDeviceDataMessage) updates) => super.copyWith((message) => updates(message as ConnectToDeviceDataMessage));
  $pb.BuilderInfo get info_ => _i;
  static ConnectToDeviceDataMessage create() => new ConnectToDeviceDataMessage();
  static $pb.PbList<ConnectToDeviceDataMessage> createRepeated() => new $pb.PbList<ConnectToDeviceDataMessage>();
  static ConnectToDeviceDataMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ConnectToDeviceDataMessage _defaultInstance;
  static void $checkItem(ConnectToDeviceDataMessage v) {
    if (v is! ConnectToDeviceDataMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  String get macAddress => $_getS(0, '');
  set macAddress(String v) { $_setString(0, v); }
  bool hasMacAddress() => $_has(0);
  void clearMacAddress() => clearField(1);

  bool get isAutoConnect => $_get(1, false);
  set isAutoConnect(bool v) { $_setBool(1, v); }
  bool hasIsAutoConnect() => $_has(1);
  void clearIsAutoConnect() => clearField(2);

  int get requestMtu => $_get(2, 0);
  set requestMtu(int v) { $_setSignedInt32(2, v); }
  bool hasRequestMtu() => $_has(2);
  void clearRequestMtu() => clearField(3);
}

class ServiceMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ServiceMessages')
    ..pp<ServiceMessage>(1, 'serviceMessages', $pb.PbFieldType.PM, ServiceMessage.$checkItem, ServiceMessage.create)
    ..hasRequiredFields = false
  ;

  ServiceMessages() : super();
  ServiceMessages.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ServiceMessages.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ServiceMessages clone() => new ServiceMessages()..mergeFromMessage(this);
  ServiceMessages copyWith(void Function(ServiceMessages) updates) => super.copyWith((message) => updates(message as ServiceMessages));
  $pb.BuilderInfo get info_ => _i;
  static ServiceMessages create() => new ServiceMessages();
  static $pb.PbList<ServiceMessages> createRepeated() => new $pb.PbList<ServiceMessages>();
  static ServiceMessages getDefault() => _defaultInstance ??= create()..freeze();
  static ServiceMessages _defaultInstance;
  static void $checkItem(ServiceMessages v) {
    if (v is! ServiceMessages) $pb.checkItemFailed(v, _i.messageName);
  }

  List<ServiceMessage> get serviceMessages => $_getList(0);
}

class ServiceMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ServiceMessage')
    ..a<double>(1, 'id', $pb.PbFieldType.OD)
    ..aOS(2, 'uuid')
    ..a<BleDeviceMessage>(3, 'device', $pb.PbFieldType.OM, BleDeviceMessage.getDefault, BleDeviceMessage.create)
    ..aOB(4, 'isPrimary')
    ..hasRequiredFields = false
  ;

  ServiceMessage() : super();
  ServiceMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ServiceMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ServiceMessage clone() => new ServiceMessage()..mergeFromMessage(this);
  ServiceMessage copyWith(void Function(ServiceMessage) updates) => super.copyWith((message) => updates(message as ServiceMessage));
  $pb.BuilderInfo get info_ => _i;
  static ServiceMessage create() => new ServiceMessage();
  static $pb.PbList<ServiceMessage> createRepeated() => new $pb.PbList<ServiceMessage>();
  static ServiceMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ServiceMessage _defaultInstance;
  static void $checkItem(ServiceMessage v) {
    if (v is! ServiceMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  double get id => $_getN(0);
  set id(double v) { $_setDouble(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get uuid => $_getS(1, '');
  set uuid(String v) { $_setString(1, v); }
  bool hasUuid() => $_has(1);
  void clearUuid() => clearField(2);

  BleDeviceMessage get device => $_getN(2);
  set device(BleDeviceMessage v) { setField(3, v); }
  bool hasDevice() => $_has(2);
  void clearDevice() => clearField(3);

  bool get isPrimary => $_get(3, false);
  set isPrimary(bool v) { $_setBool(3, v); }
  bool hasIsPrimary() => $_has(3);
  void clearIsPrimary() => clearField(4);
}

class CharacteristicMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CharacteristicMessages')
    ..pp<CharacteristicMessage>(1, 'characteristicMessage', $pb.PbFieldType.PM, CharacteristicMessage.$checkItem, CharacteristicMessage.create)
    ..hasRequiredFields = false
  ;

  CharacteristicMessages() : super();
  CharacteristicMessages.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CharacteristicMessages.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CharacteristicMessages clone() => new CharacteristicMessages()..mergeFromMessage(this);
  CharacteristicMessages copyWith(void Function(CharacteristicMessages) updates) => super.copyWith((message) => updates(message as CharacteristicMessages));
  $pb.BuilderInfo get info_ => _i;
  static CharacteristicMessages create() => new CharacteristicMessages();
  static $pb.PbList<CharacteristicMessages> createRepeated() => new $pb.PbList<CharacteristicMessages>();
  static CharacteristicMessages getDefault() => _defaultInstance ??= create()..freeze();
  static CharacteristicMessages _defaultInstance;
  static void $checkItem(CharacteristicMessages v) {
    if (v is! CharacteristicMessages) $pb.checkItemFailed(v, _i.messageName);
  }

  List<CharacteristicMessage> get characteristicMessage => $_getList(0);
}

class CharacteristicMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CharacteristicMessage')
    ..a<double>(1, 'id', $pb.PbFieldType.OD)
    ..aOS(2, 'uuid')
    ..a<int>(3, 'serviceId', $pb.PbFieldType.O3)
    ..aOS(4, 'serviceUuid')
    ..aOS(5, 'deviceId')
    ..aOB(6, 'isReadable')
    ..aOB(7, 'isWritableWithResponse')
    ..aOB(8, 'isWritableWithoutResponse')
    ..aOB(9, 'isNotificable')
    ..aOB(10, 'isIndicatable')
    ..aOB(11, 'isNotifing')
    ..aOS(12, 'value')
    ..hasRequiredFields = false
  ;

  CharacteristicMessage() : super();
  CharacteristicMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CharacteristicMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CharacteristicMessage clone() => new CharacteristicMessage()..mergeFromMessage(this);
  CharacteristicMessage copyWith(void Function(CharacteristicMessage) updates) => super.copyWith((message) => updates(message as CharacteristicMessage));
  $pb.BuilderInfo get info_ => _i;
  static CharacteristicMessage create() => new CharacteristicMessage();
  static $pb.PbList<CharacteristicMessage> createRepeated() => new $pb.PbList<CharacteristicMessage>();
  static CharacteristicMessage getDefault() => _defaultInstance ??= create()..freeze();
  static CharacteristicMessage _defaultInstance;
  static void $checkItem(CharacteristicMessage v) {
    if (v is! CharacteristicMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  double get id => $_getN(0);
  set id(double v) { $_setDouble(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get uuid => $_getS(1, '');
  set uuid(String v) { $_setString(1, v); }
  bool hasUuid() => $_has(1);
  void clearUuid() => clearField(2);

  int get serviceId => $_get(2, 0);
  set serviceId(int v) { $_setSignedInt32(2, v); }
  bool hasServiceId() => $_has(2);
  void clearServiceId() => clearField(3);

  String get serviceUuid => $_getS(3, '');
  set serviceUuid(String v) { $_setString(3, v); }
  bool hasServiceUuid() => $_has(3);
  void clearServiceUuid() => clearField(4);

  String get deviceId => $_getS(4, '');
  set deviceId(String v) { $_setString(4, v); }
  bool hasDeviceId() => $_has(4);
  void clearDeviceId() => clearField(5);

  bool get isReadable => $_get(5, false);
  set isReadable(bool v) { $_setBool(5, v); }
  bool hasIsReadable() => $_has(5);
  void clearIsReadable() => clearField(6);

  bool get isWritableWithResponse => $_get(6, false);
  set isWritableWithResponse(bool v) { $_setBool(6, v); }
  bool hasIsWritableWithResponse() => $_has(6);
  void clearIsWritableWithResponse() => clearField(7);

  bool get isWritableWithoutResponse => $_get(7, false);
  set isWritableWithoutResponse(bool v) { $_setBool(7, v); }
  bool hasIsWritableWithoutResponse() => $_has(7);
  void clearIsWritableWithoutResponse() => clearField(8);

  bool get isNotificable => $_get(8, false);
  set isNotificable(bool v) { $_setBool(8, v); }
  bool hasIsNotificable() => $_has(8);
  void clearIsNotificable() => clearField(9);

  bool get isIndicatable => $_get(9, false);
  set isIndicatable(bool v) { $_setBool(9, v); }
  bool hasIsIndicatable() => $_has(9);
  void clearIsIndicatable() => clearField(10);

  bool get isNotifing => $_get(10, false);
  set isNotifing(bool v) { $_setBool(10, v); }
  bool hasIsNotifing() => $_has(10);
  void clearIsNotifing() => clearField(11);

  String get value => $_getS(11, '');
  set value(String v) { $_setString(11, v); }
  bool hasValue() => $_has(11);
  void clearValue() => clearField(12);
}

class MonitorCharacteristicMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MonitorCharacteristicMessage')
    ..aOS(1, 'transactionId')
    ..a<CharacteristicMessage>(2, 'characteristicMessage', $pb.PbFieldType.OM, CharacteristicMessage.getDefault, CharacteristicMessage.create)
    ..hasRequiredFields = false
  ;

  MonitorCharacteristicMessage() : super();
  MonitorCharacteristicMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MonitorCharacteristicMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MonitorCharacteristicMessage clone() => new MonitorCharacteristicMessage()..mergeFromMessage(this);
  MonitorCharacteristicMessage copyWith(void Function(MonitorCharacteristicMessage) updates) => super.copyWith((message) => updates(message as MonitorCharacteristicMessage));
  $pb.BuilderInfo get info_ => _i;
  static MonitorCharacteristicMessage create() => new MonitorCharacteristicMessage();
  static $pb.PbList<MonitorCharacteristicMessage> createRepeated() => new $pb.PbList<MonitorCharacteristicMessage>();
  static MonitorCharacteristicMessage getDefault() => _defaultInstance ??= create()..freeze();
  static MonitorCharacteristicMessage _defaultInstance;
  static void $checkItem(MonitorCharacteristicMessage v) {
    if (v is! MonitorCharacteristicMessage) $pb.checkItemFailed(v, _i.messageName);
  }

  String get transactionId => $_getS(0, '');
  set transactionId(String v) { $_setString(0, v); }
  bool hasTransactionId() => $_has(0);
  void clearTransactionId() => clearField(1);

  CharacteristicMessage get characteristicMessage => $_getN(1);
  set characteristicMessage(CharacteristicMessage v) { setField(2, v); }
  bool hasCharacteristicMessage() => $_has(1);
  void clearCharacteristicMessage() => clearField(2);
}


part of flutter_ble_lib;



class BleAppearance {

  static List<int> getAppearance(Uint8List data) {
    if (data.length > 0) {
      int val = (data[1] << 8) + data[0];
      int cat = val >> 6;
      int subcat = val - (cat << 6);
      return [cat, subcat];
    }
    return [0, 0];
  }


  static List<int> getClassOfDevice(Uint8List data) {
    if (data.length > 0) {
      int val = (data[0] << 16) + (data[1] << 8) + data[2];
      int services = (val & COD_SERVICE_MASK) >> COD_SERVICE_BIT_OFFSET;
      int major = (val & COD_MAJOR_MASK) >> COD_MAJOR_BIT_OFFSET;
      int minor = (val & COD_MINOR_MASK) >> COD_MINOR_BIT_OFFSET;
      return [services, major, minor];
    }
    return [0, 0, 0];
  }


  static IconData getIcon(Uint8List appearanceData, Uint8List classOfDeviceData) {
    List<int> appearance = getAppearance(appearanceData);

    IconData id;
    switch (appearance[0]) {
      case 0: // Unknow
        break;
      case 1: // Phone
        id = Icons.smartphone;
        break;
      case 2: // Computer
        id = Icons.computer;
        break;
      case 3: // Watch
        id = Icons.watch;
        break;
      case 4: // Clock
        id = Icons.access_time;
        break;
      case 5: // Display
        id = Icons.tv;
        break;
      case 6: // Remote control
        id = Icons.router;
        break;
      case 7: // Eye-glasses
        id = Icons.watch;
        break;
      case 8: // Tag
      case 9: // Keyring
        id = Icons.nfc;
        break;
      case 10: // Media player
        id = Icons.music_video;
        break;
      case 11: // Barcode scanner
        id = Icons.scanner;
        break;
      case 12: // Thermometer
        id = Icons.show_chart;
        break;
      case 13: // Heart rate Sensor
        id = Icons.person;
        break;
      case 14: // Blood pressure
        id = Icons.local_hospital;
        break;
      case 15: // HID
        switch (appearance[1]) {
          case 0: // HID
            id = Icons.keyboard;
            break;
          case 1: // Keyboard
            id = Icons.keyboard;
            break;
          case 2: // Mouse
            id = Icons.mouse;
            break;
          case 3: // Joystick
            id = Icons.videogame_asset;
            break;
          case 4: // Gamepad
            id = Icons.gamepad;
            break;
          case 5: // Digitizer Tablet
            id = Icons.tablet;
            break;
          case 6: // Card reader
            id = Icons.credit_card;
            break;
          case 7: // Digital Pen
            id = Icons.create;
            break;
          case 8: // Barcode Scanner
            id = Icons.scanner;
            break;
        }
        break;
      case 16: // Glucose Meter
        id = Icons.local_hospital;
        break;
      case 17: // Running Walking Sensor
        id = Icons.directions_run;
        break;
      case 18: // Cycling
        id = Icons.directions_bike;
        break;
      case 49: // Pulse Oximeter
        id = Icons.local_hospital;
        break;
      case 50: // Weight Scale
        id = Icons.local_hospital;
        break;
      case 51: // Personal Mobility Device
        switch (appearance[1]) {
          case 0: // HID
            id = Icons.accessible;
            break;
          case 1: // Powered Wheelchair
            id = Icons.accessible;
            break;
          case 2: // Mobility Scooter
            id = Icons.accessible_forward;
            break;
        }
        break;
      case 52: // Continuous Glucose Monitor
        id = Icons.local_hospital;
        break;
      case 53: // Insulin Pump
        id = Icons.local_hospital;
        break;
      case 54: // Medication Delivery
        id = Icons.local_hospital;
        break;
      case 81: // Outdoor Sports Activity
        id = Icons.gps_fixed;
        break;
    }

    if (id == null) {
      List<int> classOfDevice = getClassOfDevice(classOfDeviceData);

      switch (classOfDevice[1]) {
        case COD_MAJOR_MISCELLANEOUS: // Unknow
          break;
        case COD_MAJOR_COMPUTER:
          id = Icons.computer;
          switch (classOfDevice[2]) {
            case COD_COMPUTER_MINOR_DESKTOP:
              id = Icons.desktop_windows;
              break;
            case COD_COMPUTER_MINOR_SERVER:
              break;
            case COD_COMPUTER_MINOR_LAPTOP:
              id = Icons.laptop;
              break;
            case COD_COMPUTER_MINOR_HANDHELD:
              break;
            case COD_COMPUTER_MINOR_PALM:
              break;
            case COD_COMPUTER_MINOR_WEARABLE:
              id = Icons.watch;
              break;
            case COD_COMPUTER_MINOR_TABLET:
              id = Icons.tablet;
              break;
          }
          break;
        case COD_MAJOR_PHONE:
          id = Icons.smartphone;
          break;
        case COD_MAJOR_LAN_ACCESS:
          id = Icons.router;
          break;
        case COD_MAJOR_AUDIO:
          id = Icons.headset;
          switch (classOfDevice[2]) {
            case COD_AUDIO_MINOR_HEADSET:
              id = Icons.headset;
              break;
            case COD_AUDIO_MINOR_HANDS_FREE:
              id = Icons.headset_mic;
              break;
            case COD_AUDIO_MINOR_HEADSET_HANDS_FREE:
              id = Icons.headset_mic;
              break;
            case COD_AUDIO_MINOR_MICROPHONE:
              id = Icons.mic;
              break;
            case COD_AUDIO_MINOR_LOUDSPEAKER:
              id = Icons.speaker;
              break;
            case COD_AUDIO_MINOR_HEADPHONES:
              id = Icons.headset;
              break;
            case COD_AUDIO_MINOR_PORTABLE_AUDIO:
              id = Icons.speaker_phone;
              break;
            case COD_AUDIO_MINOR_CAR_AUDIO:
              id = Icons.directions_car;
              break;
            case COD_AUDIO_MINOR_SET_TOP_BOX:
              id = Icons.speaker;
              break;
            case COD_AUDIO_MINOR_HIFI_AUDIO:
              id = Icons.speaker;
              break;
            case COD_AUDIO_MINOR_VCR:
                id = Icons.videocam;
              break;
            case COD_AUDIO_MINOR_VIDEO_CAMERA:
              id = Icons.videocam;
              break;
            case COD_AUDIO_MINOR_CAMCORDER:
              id = Icons.videocam;
              break;
            case COD_AUDIO_MINOR_VIDEO_MONITOR:
              id = Icons.tv;
              break;
            case COD_AUDIO_MINOR_VIDEO_DISPLAY_LOUDSPEAKER:
              id = Icons.tv;
              break;
            case COD_AUDIO_MINOR_VIDEO_DISPLAY_CONFERENCING:
              id = Icons.tv;
              break;
            case COD_AUDIO_MINOR_GAMING_TOY:
              id = Icons.toys;
              break;
          }
          break;
        case COD_MAJOR_PERIPHERAL:
          if ((classOfDevice[2] & COD_PERIPHERAL_MINOR_MAJOR_MASK_KEYBOARD) == COD_PERIPHERAL_MINOR_MAJOR_MASK_KEYBOARD) {
            id = Icons.keyboard;
          }
          else if ((classOfDevice[2] & COD_PERIPHERAL_MINOR_MAJOR_MASK_POINTER) == COD_PERIPHERAL_MINOR_MAJOR_MASK_POINTER) {
            id = Icons.mouse;
          }
          switch (classOfDevice[2]) {
            case COD_PERIPHERAL_MINOR_NO_CATEGORY:
              break;
            case COD_PERIPHERAL_MINOR_JOYSTICK:
              id = Icons.videogame_asset;
              break;
            case COD_PERIPHERAL_MINOR_GAMEPAD:
              id = Icons.gamepad;
              break;
            case COD_PERIPHERAL_MINOR_REMOTE_CONTROL:
              id = Icons.router;
              break;
            case COD_PERIPHERAL_MINOR_SENSING:
              break;
            case COD_PERIPHERAL_MINOR_REMOTE_CONTROL:
              id = Icons.router;
              break;
            case COD_PERIPHERAL_MINOR_DIGITIZER_TABLET:
              id = Icons.tablet;
              break;
            case COD_PERIPHERAL_MINOR_CARD_READER:
              id = Icons.credit_card;
              break;
            case COD_PERIPHERAL_MINOR_DIGITAL_PEN:
              id = Icons.create;
              break;
            case COD_PERIPHERAL_MINOR_HANDHELD_SCANNER:
              id = Icons.scanner;
              break;
            case COD_PERIPHERAL_MINOR_HANDHELD_GESTURAL:
              id = Icons.gesture;
              break;
          }
          break;
        case COD_MAJOR_IMAGING:
          id = Icons.tv;
          switch (classOfDevice[2]) {
            case COD_IMAGING_MINOR_DISPLAY_MASK:
              id = Icons.toys;
              break;
            case COD_IMAGING_MINOR_CAMERA_MASK:
              id = Icons.camera_alt;
              break;
            case COD_IMAGING_MINOR_SCANNER_MASK:
              id = Icons.scanner;
              break;
            case COD_IMAGING_MINOR_PRINTER_MASK:
              id = Icons.print;
              break;
          }
          break;
        case COD_MAJOR_WEARABLE:
          id = Icons.watch;
          break;
        case COD_MAJOR_TOY:
          id = Icons.toys;
          switch (classOfDevice[2]) {
            case COD_TOY_MINOR_ROBOT:
              id = Icons.toys;
              break;
            case COD_TOY_MINOR_VEHICLE:
              id = Icons.directions_car;
              break;
            case COD_TOY_MINOR_DOLLACTIONFIGURE:
              id = Icons.toys;
              break;
            case COD_TOY_MINOR_CONTROLLER:
              id = Icons.gamepad;
              break;
            case COD_TOY_MINOR_GAME:
              id = Icons.videogame_asset;
              break;
          }
          break;
        case COD_MAJOR_HEALTH:
          id = Icons.local_hospital;
          break;
        case COD_MAJOR_UNCLASSIFIED:
          break;
      }
    }

    if (id == null) {
      id = Icons.bluetooth;
    }
    return id;
  }
}

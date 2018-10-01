part of flutter_ble_lib;

/* Class of Device */

// Various mask

const int COD_MINOR_BIT_OFFSET = 2;
const int COD_MAJOR_BIT_OFFSET = 8;
const int COD_SERVICE_BIT_OFFSET = 8 + 5;

const int COD_SERVICE_MASK = 0xFFE000;
const int COD_MAJOR_MASK = 0x001F00;
const int COD_MINOR_MASK = 0x0000FC;

// Service mask

const int COD_SERVICE_LIMITED_DISCOVERABLE_MODE = 0x0020;
const int COD_SERVICE_POSITIONING = 0x0100;
const int COD_SERVICE_NETWORKING = 0x0200;
const int COD_SERVICE_RENDERING = 0x0400;
const int COD_SERVICE_CAPTURING = 0x0800;
const int COD_SERVICE_OBJECT_TRANSFER = 0x1000;
const int COD_SERVICE_AUDIO = 0x2000;
const int COD_SERVICE_TELEPHONY = 0x4000;
const int COD_SERVICE_INFORMATION = 0x8000;

// Major class

const int COD_MAJOR_MISCELLANEOUS = 0x00;
const int COD_MAJOR_COMPUTER = 0x01;
const int COD_MAJOR_PHONE = 0x02;
const int COD_MAJOR_LAN_ACCESS = 0x03;
const int COD_MAJOR_AUDIO = 0x04;
const int COD_MAJOR_PERIPHERAL = 0x05;
const int COD_MAJOR_IMAGING = 0x06;
const int COD_MAJOR_WEARABLE = 0x07;
const int COD_MAJOR_TOY = 0x08;
const int COD_MAJOR_HEALTH = 0x09;
const int COD_MAJOR_UNCLASSIFIED = 0x1F;

// Minor class

// COD_MAJOR_COMPUTER
const int COD_COMPUTER_MINOR_UNCLASSIFIED = 0x00;
const int COD_COMPUTER_MINOR_DESKTOP = 0x01;
const int COD_COMPUTER_MINOR_SERVER = 0x02;
const int COD_COMPUTER_MINOR_LAPTOP = 0x03;
const int COD_COMPUTER_MINOR_HANDHELD = 0x04;
const int COD_COMPUTER_MINOR_PALM = 0x05;
const int COD_COMPUTER_MINOR_WEARABLE = 0x06;
const int COD_COMPUTER_MINOR_TABLET = 0x07;

// COD_MAJOR_PHONE
const int COD_PHONE_MINOR_UNCLASSIFIED = 0x00;
const int COD_PHONE_MINOR_CELLULAR = 0x01;
const int COD_PHONE_MINOR_CORDLESS = 0x02;
const int COD_PHONE_MINOR_SMART = 0x03;
const int COD_PHONE_MINOR_WIRED_MODEM = 0x04;
const int COD_PHONE_MINOR_COMMON_ISDN_ACCESS = 0x05;

// COD_MAJOR_LAN_ACCESS
// The minor CODs for LAN Access uses different constrants:
const int COD_LAN_ACCESS_BIT_OFFSET = 3;
const int  COD_LAN_ACCESS_0_USED = 0x00 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_17_USED = 0x01 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_33_USED = 0x02 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_50_USED = 0x03 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_67_USED = 0x04 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_83_USED = 0x05 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_99_USED = 0x06 << COD_LAN_ACCESS_BIT_OFFSET;
const int  COD_LAN_ACCESS_FULL = 0x07 << COD_LAN_ACCESS_BIT_OFFSET;

const int COD_LAN_MINOR_UNCLASSIFIED = 0x00;

const int COD_LAN_MINOR_MASK = 0x00001C;
const int COD_LAN_ACCESS_MASK = 0x0000E0;

// COD_MAJOR_AUDIO
const int COD_AUDIO_MINOR_UNCLASSIFIED = 0x00;
const int COD_AUDIO_MINOR_HEADSET = 0x01;
const int COD_AUDIO_MINOR_HANDS_FREE = 0x02;
const int COD_AUDIO_MINOR_HEADSET_HANDS_FREE = 0x03;
const int COD_AUDIO_MINOR_MICROPHONE = 0x04;
const int COD_AUDIO_MINOR_LOUDSPEAKER = 0x05;
const int COD_AUDIO_MINOR_HEADPHONES = 0x06;
const int COD_AUDIO_MINOR_PORTABLE_AUDIO = 0x07;
const int COD_AUDIO_MINOR_CAR_AUDIO = 0x08;
const int COD_AUDIO_MINOR_SET_TOP_BOX = 0x09;
const int COD_AUDIO_MINOR_HIFI_AUDIO = 0x0A;
const int COD_AUDIO_MINOR_VCR = 0x0B;
const int COD_AUDIO_MINOR_VIDEO_CAMERA = 0xC0;
const int COD_AUDIO_MINOR_CAMCORDER = 0x0D;
const int COD_AUDIO_MINOR_VIDEO_MONITOR = 0x0E;
const int COD_AUDIO_MINOR_VIDEO_DISPLAY_LOUDSPEAKER = 0x0F;
const int COD_AUDIO_MINOR_VIDEO_DISPLAY_CONFERENCING = 0x10;
const int COD_AUDIO_MINOR_GAMING_TOY = 0x12;

// COD_MAJOR_PERIPHERAL
const int COD_PERIPHERAL_MINOR_NO_CATEGORY = 0x00;
const int COD_PERIPHERAL_MINOR_UNCLASSIFIED = 0x00;
const int COD_PERIPHERAL_MINOR_JOYSTICK = 0x01;
const int COD_PERIPHERAL_MINOR_GAMEPAD = 0x02;
const int COD_PERIPHERAL_MINOR_REMOTE_CONTROL = 0x03;
const int COD_PERIPHERAL_MINOR_SENSING = 0x04;
const int COD_PERIPHERAL_MINOR_DIGITIZER_TABLET = 0x05;
const int COD_PERIPHERAL_MINOR_CARD_READER = 0x06;
const int COD_PERIPHERAL_MINOR_DIGITAL_PEN = 0x07;
const int COD_PERIPHERAL_MINOR_HANDHELD_SCANNER = 0x08;
const int COD_PERIPHERAL_MINOR_HANDHELD_GESTURAL = 0x09;
const int COD_PERIPHERAL_MINOR_MAJOR_MASK_KEYBOARD = 0x10;
const int COD_PERIPHERAL_MINOR_MAJOR_MASK_POINTER = 0x20;

// COD_MAJOR_IMAGING
const int COD_IMAGING_MINOR_DISPLAY_MASK = 0x04;
const int COD_IMAGING_MINOR_CAMERA_MASK = 0x08;
const int COD_IMAGING_MINOR_SCANNER_MASK = 0x10;
const int COD_IMAGING_MINOR_PRINTER_MASK = 0x20;

// COD_MAJOR_WEARABLE
const int COD_WEARABLE_MINOR_WRIST_WATCH = 0x01;
const int COD_WEARABLE_MINOR_PAGER = 0x02;
const int COD_WEARABLE_MINOR_JACKET = 0x03;
const int COD_WEARABLE_MINOR_HELMET = 0x04;
const int COD_WEARABLE_MINOR_GLASSES = 0x05;

// COD_MAJOR_TOY
const int COD_TOY_MINOR_ROBOT = 0x01;
const int COD_TOY_MINOR_VEHICLE = 0x02;
const int COD_TOY_MINOR_DOLLACTIONFIGURE = 0x03;
const int COD_TOY_MINOR_CONTROLLER = 0x04;
const int COD_TOY_MINOR_GAME = 0x05;

// COD_MAJOR_HEALTH
const int COD_HEALTH_MINOR_UNDEFINED = 0x01;
const int COD_HEALTH_MINOR_BLOOD_PRESSURE_MONITOR = 0x02;
const int COD_HEALTH_MINOR_THERMOMETER = 0x02;
const int COD_HEALTH_MINOR_WEIGHING_SCALE = 0x03;
const int COD_HEALTH_MINOR_GLUCOSE_METER = 0x04;
const int COD_HEALTH_MINOR_PULSE_OXIMETER = 0x05;
const int COD_HEALTH_MINOR_HEART_PULSE_RATE_MONITOR = 0x06;
const int COD_HEALTH_MINOR_HEALTH_DATA_DISPLAY = 0x07;
const int COD_HEALTH_MINOR_STEP_COUNTER = 0x08;
const int COD_HEALTH_MINOR_BODY_COMPOSITION_ANALYZER = 0x09;
const int COD_HEALTH_MINOR_PEAK_FLOW_MONITOR = 0x0A;
const int COD_HEALTH_MINOR_MEDICATION_MONITOR = 0x0B;
const int COD_HEALTH_MINOR_KNEE_PROSTHESIS = 0x0C;
const int COD_HEALTH_MINOR_ANKLE_PROSTHESIS = 0x0D;
const int COD_HEALTH_MINOR_GENERIC_HEALTH_MANAGER = 0x0E;
const int COD_HEALTH_MINOR_PERSONAL_MOBILITY_DEVICE = 0x0F;


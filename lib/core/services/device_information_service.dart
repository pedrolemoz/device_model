import 'package:flutter/services.dart';

import '../models/device_information.dart';

class DeviceInformationService {
  static Future<DeviceInformation> getInformation() async {
    var methodChannel = MethodChannel('com.pedrolemoz.device_model');
    var response = await methodChannel.invokeMethod('getDeviceInformation');

    return DeviceInformation.fromMethodChannel(response);
  }
}

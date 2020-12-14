
import 'dart:async';

import 'package:flutter/services.dart';

class SunAlbc {
  static const MethodChannel _channel =
      const MethodChannel('sun_albc');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> get sunAlbcTbLicenseLogin async {
    final String version = await _channel.invokeMethod('getSunAlbcTbLicenseLogin');
    return version;
  }
}

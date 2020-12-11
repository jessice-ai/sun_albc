import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sun_albc/sun_albc.dart';

void main() {
  const MethodChannel channel = MethodChannel('sun_albc');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SunAlbc.platformVersion, '42');
  });
}

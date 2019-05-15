import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rong_cloud/rong_cloud.dart';

void main() {
  const MethodChannel channel = MethodChannel('rong_cloud');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RongCloud.platformVersion, '42');
  });
}

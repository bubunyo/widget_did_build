import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_did_build/widget_did_build.dart';

void main() {
  const MethodChannel channel = MethodChannel('widget_did_build');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await WidgetDidBuild.platformVersion, '42');
  });
}
import Flutter
import UIKit

public class SwiftWidgetDidBuildPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "widget_did_build", binaryMessenger: registrar.messenger())
    let instance = SwiftWidgetDidBuildPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

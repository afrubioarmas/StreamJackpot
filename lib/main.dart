import 'dart:core';

import 'package:StreamJackpot/misc/service_locator.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter_foreground_plugin/flutter_foreground_plugin.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await locator.registerDependencies();
  if (WebRTC.platformIsDesktop) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  } else if (WebRTC.platformIsAndroid) {
    WidgetsFlutterBinding.ensureInitialized();
    startForegroundService();
  }

  runApp(App());
}

Future<bool> startForegroundService() async {
  await FlutterForegroundPlugin.setServiceMethodInterval(seconds: 5);
  await FlutterForegroundPlugin.setServiceMethod(globalForegroundService);
  await FlutterForegroundPlugin.startForegroundService(
    holdWakeLock: false,
    onStarted: () {
      print('Foreground on Started');
    },
    onStopped: () {
      print('Foreground on Stopped');
    },
    title: 'Tcamera',
    content: 'Tcamera sharing your screen.',
    iconName: 'ic_stat_mobile_screen_share',
  );
  return true;
}

void globalForegroundService() {
  debugPrint('current datetime is ${DateTime.now()}');
}

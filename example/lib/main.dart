import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:check_root_jailbreak/check_root_jailbreak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _platformName;
  String? displayChecked;
  final _checkRootJailbreakPlugin = CheckRootJailbreak();

  @override
  void initState() {
    super.initState();
    _platformName = Platform.isAndroid ? 'Android' : 'iOS';
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    bool? isRootAvailable;
    try {
      isRootAvailable = await _checkRootJailbreakPlugin.isRootAvailable();
    } on PlatformException {
      isRootAvailable = null;
    }

    if (!mounted) return;

    setState(() {
      displayChecked = 'Device running on $_platformName, rooted or jailbreak is $isRootAvailable';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Check Root and Jailbreak Plugin example app'),
        ),
        body: Center(
          child: Text('$displayChecked\n'),
        ),
      ),
    );
  }
}

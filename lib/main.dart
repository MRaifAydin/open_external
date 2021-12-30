import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Open External Apps'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await LaunchApp.openApp(
                androidPackageName: 'com.android.chrome',
                openStore: true,
              );
            },
            child: const Text('Open External Apps'),
          ),
        ),
      ),
    );
  }
}

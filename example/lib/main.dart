import 'package:flutter/material.dart';
import 'package:widget_did_build/widget_did_build.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends DidBuildState<MyApp> {
  @override
  void initState() {
    super.initState();
    print('>>>>>>>>>>>>>>> for the road');
  }

  @override
  void didBuild(BuildContext context) {
    print('widget built>>>>>>>>>>>>>');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running... )'),
        ),
      ),
    );
  }
}

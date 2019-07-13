import 'package:flutter/material.dart';

abstract class DidBuildState<T extends StatefulWidget> extends State<T> {
  @protected
  void didBuild(BuildContext context);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      didBuild(context);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:tft/utils/app_extension.dart';
import 'package:tft/utils/app_theme.dart';

/// Remember call super.build(context) in widget
abstract class BaseStateful<T extends StatefulWidget> extends State<T> {
  AppTheme appTheme;

  /// Context valid to create providers
  @mustCallSuper
  @protected
  void initDependencies(BuildContext context) {
    appTheme = context.appTheme();
  }

  @protected
  void afterFirstBuild(BuildContext context) {}

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        afterFirstBuild(context);
      }
    });
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @mustCallSuper
  @override
  Widget build(BuildContext context) {
    initDependencies(context);
    return null;
  }
}

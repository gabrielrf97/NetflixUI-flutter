import 'package:flutter/material.dart';

class _DeviceSizesLimit {
  static double mobileWidth = 500;
  static double tabletWidth = 1200;
  static double webWidth = 2400;
  static double tvWidth = 8000;
}

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget web;
  final Widget tv;

  Responsive({@required this.mobile, this.tablet, @required this.web, this.tv});

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.height <= _DeviceSizesLimit.mobileWidth;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.height <= _DeviceSizesLimit.tabletWidth &&
        MediaQuery.of(context).size.height > _DeviceSizesLimit.mobileWidth;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.height <= _DeviceSizesLimit.webWidth &&
        MediaQuery.of(context).size.height > _DeviceSizesLimit.tabletWidth;
  }

  static bool isTv(BuildContext context) {
    return MediaQuery.of(context).size.height <= _DeviceSizesLimit.tvWidth &&
        MediaQuery.of(context).size.height > _DeviceSizesLimit.webWidth;
  }

  Widget getChildForDevice(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context)) {
      return tablet ?? web;
    } else if (isWeb(context)) {
      return web;
    } else {
      return tv;
    }
  }

  @override
  Widget build(BuildContext context) {
    return getChildForDevice(context);
  }
}

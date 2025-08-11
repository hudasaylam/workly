import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.desktop,
    this.tablet,
    this.mobileLarge,
    required this.mobile,
  });

  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1500;

  static bool isTablet(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return w >= 700 && w < 1500;
  }

  static bool isMobileLarge(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return w >= 500 && w < 700;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 500;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    if (w >= 1500) {
      return desktop;
    } else if (w >= 700 && tablet != null) {
      return tablet!;
    } else if (w >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}

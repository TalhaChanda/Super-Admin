import 'package:flutter/material.dart';
import 'package:super_admin/helpers/sizes.dart';

class Responsive {
  static bool isMobile(BuildContext context) {
    return screenWidth(context) < 450;
  }

  static bool isTablet(BuildContext context) {
    double width = screenWidth(context);
    return width >= 450 && width < 800;
  }

  static bool isDesktop(BuildContext context) {
    double width = screenWidth(context);
    return width >= 800 && width < 1920;
  }

  static bool is4K(BuildContext context) {
    return screenWidth(context) >= 1920;
  }
}

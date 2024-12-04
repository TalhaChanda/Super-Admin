import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';
import 'package:super_admin/helpers/routes.dart';

class MainController extends GetxController {
  var selectedRoute = Routes.dashboard.obs;

  final List<AdminMenuItem> adminMenuItems = const [
    AdminMenuItem(
      title: 'User Profile',
      icon: Icons.account_circle,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Settings',
      icon: Icons.settings,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Logout',
      icon: Icons.logout,
      route: '/',
    ),
  ];

  final List<AdminMenuItem> sideBarItems = [
    AdminMenuItem(
      title: 'Dashboard',
      route: Routes.dashboard,
      icon: Icons.dashboard,
    ),
    AdminMenuItem(
      title: 'Users',
      icon: Icons.person,
      route: Routes.users,
    ),
  ];
}

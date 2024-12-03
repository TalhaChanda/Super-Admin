import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/views/auth/view/auth_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Super Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: const AuthView(),
    );
  }
}

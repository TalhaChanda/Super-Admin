import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/routes.dart';
import 'package:super_admin/views/home/dashboard/view/dashboard_view.dart';
import 'package:super_admin/views/home/main/view/main_view.dart';
import 'package:super_admin/views/home/users/view/users_view.dart';

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
        getPages: Routes.routes,
      home: MainView(),

   
    );
  }

 
}

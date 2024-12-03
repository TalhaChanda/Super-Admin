import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/styles.dart';

class Utils {
  static void showLoading({String? message}) {
    Get.dialog(
      barrierDismissible: false,
      barrierColor: AppColors.transparent,
      Dialog(
        backgroundColor: AppColors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SpinKitDancingSquare(
              color: AppColors.primary,
              size: 50.0,
            ),
            Text(
              message ?? "Please wait",
              style: Styles.fontSmall,
            )
          ],
        ),
      ),
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:modern_textfield/modern_textfield.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/gaps.dart';
import 'package:super_admin/helpers/responsive.dart';
import 'package:super_admin/helpers/sizes.dart';
import 'package:super_admin/helpers/styles.dart';
import 'package:super_admin/widgets/primary_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  double _calculateCardWidth(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return screenWidth(context) * 0.9;
    } else if (Responsive.isTablet(context)) {
      return screenWidth(context) * 0.6;
    } else if (Responsive.isDesktop(context)) {
      return screenWidth(context) * 0.4;
    } else {
      return screenWidth(context) * 0.3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: _calculateCardWidth(context),
          child: Card(
            color: AppColors.white,
            shadowColor: AppColors.primary,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    "LOGO",
                    style: Styles.fontMedium.copyWith(color: AppColors.secondary),
                  ),
                  verticalGap(25),
                  ModernTextField(
                    hintText: "Enter Email",
                    iconBackgroundColor: AppColors.secondary,
                    customLeadingIcon: Icons.email,
                    backgroundColor: AppColors.aliceBlue,
                    width: (_calculateCardWidth(context) * 0.9).toInt(),
                  ),
                  verticalGap(10),
                  ModernTextField(
                    hintText: "Enter Password",
                    iconBackgroundColor: AppColors.primary,
                    customLeadingIcon: Icons.key,
                    backgroundColor: AppColors.aliceBlue,
                    isPasswordField: true,
                    width: (_calculateCardWidth(context) * 0.9).toInt(),
                  ),
                  verticalGap(30),
                  PrimaryButton(
                    buttonIcon: Icons.login,
                    press: () {},
                    text: "Login",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

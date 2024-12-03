import 'package:flutter/material.dart';
import 'package:modern_textfield/modern_textfield.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/gaps.dart';
import 'package:super_admin/helpers/sizes.dart';
import 'package:super_admin/helpers/styles.dart';
import 'package:super_admin/helpers/utils.dart';
import 'package:super_admin/widgets/primary_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenWidth(context) * .4,
          child: Card(
            color: AppColors.white,
            shadowColor: AppColors.primary,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "LOGO",
                    style: Styles.fontMedium.copyWith(color: AppColors.secondary),
                  ),
                  verticalGap(25),
                  ModernTextField(
                    hintText: "Enter Email",
                    iconBackgroundColor: AppColors.secondary,
                    customLeadingIcon: Icons.email,
                    backgroundColor: AppColors.aliceBlue,
                    width: (screenWidth(context) * .38).toInt(),
                  ),
                  verticalGap(10),
                  ModernTextField(
                    hintText: "Enter Password",
                    iconBackgroundColor: AppColors.primary,
                    customLeadingIcon: Icons.key,
                    backgroundColor: AppColors.aliceBlue,
                    isPasswordField: true,
                    width: (screenWidth(context) * .38).toInt(),
                  ),
                  verticalGap(30),
                  PrimaryButton(
                    buttonIcon: Icons.login,
                    press: () {
                      Utils.showLoading();
                    },
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

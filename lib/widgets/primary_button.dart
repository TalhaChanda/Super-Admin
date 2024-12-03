import 'package:flutter/material.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.press, this.text, this.color, this.height, this.width, this.buttonIcon});

  final String? text;
  final Function()? press;
  final Color? color;
  final double? width, height;
  final IconData? buttonIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 40,
      child: ElevatedButton.icon(
        icon: Icon(buttonIcon, color: AppColors.white, size: 18),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color ?? AppColors.primary),
        ),
        onPressed: press,
        label: Text(
          text.toString(),
          style: Styles.fontSmall.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}

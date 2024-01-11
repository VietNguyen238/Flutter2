import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class ButtonFilter extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final bool isCurrent;
  const ButtonFilter(
      {super.key, required this.title, this.onTap, this.isCurrent = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: AppStyles.borderRadius,
          color: isCurrent == true
              ? AppColors.white
              : AppColors.red.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: AppText.largeBold.copyWith(color: AppColors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class NavigationCategory extends StatelessWidget {
  final String label;
  final IconData icon;
  const NavigationCategory(
      {super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            borderRadius: AppStyles.borderRadius,
            color: AppColors.blue,
          ),
          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: AppText.small,
        )
      ],
    );
  }
}

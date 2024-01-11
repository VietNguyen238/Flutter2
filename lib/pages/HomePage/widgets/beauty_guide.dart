import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class BeautyGuide extends StatelessWidget {
  final String content;
  final String image;
  const BeautyGuide({super.key, required this.content, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          borderRadius: AppStyles.borderRadius, color: AppColors.white),
      child: Column(children: [
        ClipRRect(
          borderRadius: AppStyles.borderRadius,
          child: Image.asset(
            image,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 120,
          child: Text(
            content,
            style: AppText.small,
          ),
        ),
      ]),
    );
  }
}

import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final bool isBackground;
  final Function()? onTap;
  const Button(
      {super.key, required this.title, this.isBackground = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color:
                    isBackground == true ? AppColors.orange : AppColors.white),
            color:
                isBackground == true ? AppColors.orange : AppColors.foundation),
        child: GestureDetector(
          onTap: onTap,
          child: Center(
              child: Text(
            title,
            style: AppText.small.copyWith(
                color: isBackground == true
                    ? AppColors.foundation
                    : AppColors.white),
          )),
        ));
  }
}

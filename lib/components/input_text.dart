import 'dart:ffi';

import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String title;
  final num persent;
  final String hintText;
  const InputText(
      {super.key,
      required this.title,
      required this.hintText,
      this.persent = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: AppText.smallBold.copyWith(color: AppColors.white),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: AppStyles.borderRadius, color: AppColors.white),
          width: MediaQuery.sizeOf(context).width * persent,
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppText.small
                    .copyWith(color: AppColors.black.withOpacity(0.4)),
                contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                border: InputBorder.none),
          ),
        )
      ],
    );
  }
}

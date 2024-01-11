import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isHidden;
  const TitleSection(
      {super.key, required this.title, this.onTap, this.isHidden = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppText.largeBold,
        ),
        GestureDetector(
          onTap: onTap,
          child: isHidden == false
              ? Text('Xem tất cả >',
                  style: AppText.medium.copyWith(color: AppColors.red))
              : const Text(''),
        )
      ],
    );
  }
}

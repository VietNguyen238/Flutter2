import 'package:b1/Configs/app_icon.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width - (20 * 2) - 35 - 15,
      height: 35,
      padding: EdgeInsets.only(left: 60),
      decoration: const BoxDecoration(
        color: AppColors.border,
        borderRadius: AppStyles.borderRadius,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter keyword to find out...',
                  border: InputBorder.none,
                  hintStyle: AppText.medium.copyWith(color: AppColors.gray2),
                  contentPadding: EdgeInsets.only(bottom: 13)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: SvgPicture.asset(
              AppIcons.ic_search,
            ),
          )
        ],
      ),
    );
  }
}

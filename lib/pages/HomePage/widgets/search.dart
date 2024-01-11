import 'package:b1/Configs/app_icon.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  final Function()? onTap;
  const Search({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width - (20 * 2) - 60,
          height: 35,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter keyword to find out...',
                      border: InputBorder.none,
                      hintStyle:
                          AppText.medium.copyWith(color: AppColors.gray2),
                      contentPadding: EdgeInsets.only(bottom: 13)),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 35,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: AppColors.blue),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.ic_search,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

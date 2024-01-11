import 'package:b1/styles/app_colors.dart';
import 'package:b1/utils/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationItem extends StatelessWidget {
  final String icon;
  final Menus index;
  final Menus name;
  final Function()? onPressed;
  const BottomNavigationItem(
      {super.key,
      required this.icon,
      this.onPressed,
      required this.index,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          index == name ? AppColors.orange : AppColors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}

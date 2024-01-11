import 'package:b1/Configs/app_icon.dart';
import 'package:b1/components/input_search.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: AppStyles.paddingPage,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      'Student',
                      style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Management',
                      style: TextStyle(
                          color: AppColors.foundation,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const InputSearch(),
                  Container(
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: AppColors.border,
                        borderRadius: AppStyles.borderRadius),
                    child: SvgPicture.asset(AppIcons.ic_setting_config),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 5,
          child: Image.asset(AppIcons.vt_person, height: 121),
        )
      ],
    );
  }
}

import 'dart:ffi';

import 'package:b1/Configs/app_icon.dart';
import 'package:b1/Configs/app_router.dart';
import 'package:b1/controller/student_controller.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemStudent extends StatelessWidget {
  final double point;
  final String email;
  final String name;
  const ItemStudent(
      {super.key,
      required this.point,
      required this.email,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: AppStyles.paddingPage,
          child: Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: AppStyles.borderRadius,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,
                          style:
                              AppText.medium.copyWith(color: AppColors.black)),
                      SizedBox(
                        height: 3,
                      ),
                      Text(email,
                          style: AppText.small.copyWith(color: AppColors.gray1))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRouter.editStudent);
                          },
                          child: SvgPicture.asset(
                            AppIcons.ic_edit,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(AppIcons.ic_delete),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 15,
            left: 8,
            child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.foundation,
                ),
                child: Center(
                  child: Text(point.toString(),
                      style:
                          AppText.smallBold.copyWith(color: AppColors.white)),
                )))
      ],
    );
  }
}

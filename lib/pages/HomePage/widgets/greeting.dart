import 'package:b1/Configs/app_icon.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: Image.network(
                    'https://i.pinimg.com/236x/b8/86/51/b8865187f0c1b0cb2c9878907b5a9529.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'Xin chào ',
                style: AppText.medium,
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 35,
                width: 35,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.gray2.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: SvgPicture.asset(AppIcons.ic_notification,
                    color: AppColors.black),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 10, color: AppColors.white),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

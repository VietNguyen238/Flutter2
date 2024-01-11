import 'package:b1/Configs/app_icon.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class NailShop extends StatelessWidget {
  final String title;
  const NailShop({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: AppStyles.borderRadius,
        color: AppColors.white,
      ),
      width: MediaQuery.sizeOf(context).width - (20 * 2),
      child: Row(children: [
        ClipRRect(
          borderRadius: AppStyles.borderRadius,
          child: Image.asset(
            AppIcons.im_nails,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title, style: AppText.largeBold),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.place,
                    size: 18,
                    color: AppColors.red,
                  ),
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width - (20 * 2) - 130,
                      child:
                          Text('71 Nguyen duy, Khue Trung, Cam Le, Da Nang')),
                ]),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(
                Icons.star,
                size: 22,
                color: Colors.yellow,
              ),
              RichText(
                text: TextSpan(
                    text: '4.7',
                    style: AppText.smallBold.copyWith(color: AppColors.black),
                    children: [
                      TextSpan(text: ' 432 đánh giá', style: AppText.small)
                    ]),
              )
            ])
          ],
        )
      ]),
    );
  }
}

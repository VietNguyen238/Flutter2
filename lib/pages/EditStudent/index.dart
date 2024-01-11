import 'package:b1/components/app_bar_section.dart';
import 'package:b1/components/button.dart';
import 'package:b1/components/input_text.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class EditStudent extends StatelessWidget {
  const EditStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarSection(),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(46),
                      topRight: Radius.circular(46)),
                  color: AppColors.foundation),
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text('Edit Student Information',
                      style:
                          AppText.headingBold.copyWith(color: AppColors.blue)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: AppStyles.paddingPage,
                  child: Column(
                    children: [
                      const InputText(
                          title: 'Fullname', hintText: 'Nguyễn Thị Mai Thi'),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              InputText(
                                title: 'Class',
                                hintText: '19TCLC_DT1DT1',
                                persent: 0.55,
                              ),
                              InputText(
                                title: 'Email',
                                hintText: 'bigdipper201201@gmail.com',
                                persent: 0.55,
                              ),
                              InputText(
                                title: 'Address',
                                hintText: '103 Hoài Thanh',
                                persent: 0.55,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InputText(
                                title: 'Student ID',
                                hintText: '102190028',
                                persent: 0.3,
                              ),
                              InputText(
                                title: 'Date of Birth',
                                hintText: '04/25/2001',
                                persent: 0.3,
                              ),
                              InputText(
                                title: 'Phone number',
                                hintText: '0367780716',
                                persent: 0.3,
                              ),
                            ],
                          )
                        ],
                      ),
                      const InputText(
                        title: 'Average mark',
                        hintText: '3.91',
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Button(title: 'Save'),
                          const SizedBox(
                            width: 10,
                          ),
                          Button(
                            title: 'Cancel',
                            isBackground: false,
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      )),
    );
  }
}

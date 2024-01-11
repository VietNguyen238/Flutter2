import 'package:b1/pages/ListStudent/widgets/list_Students.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class ListNavigation extends StatefulWidget {
  const ListNavigation({super.key});

  @override
  State<ListNavigation> createState() => _ListNavigationState();
}

class _ListNavigationState extends State<ListNavigation> {
  Menus currentIndex = Menus.students;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: ItemNavigation(
            onTap: (Menus value) {
              setState(() {
                currentIndex = value;
              });
            },
            currentIndex: currentIndex,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          child: Column(
            children: [pages[currentIndex.index]],
          ),
        ),
      ],
    );
  }

  final pages = [
    ListStudents(),
    const Center(
      child: Text('subject'),
    ),
    const Center(
      child: Text('evaluation'),
    ),
    const Center(
      child: Text('event'),
    ),
  ];
}

enum Menus { students, subject, evaluation, event }

class ItemNavigation extends StatelessWidget {
  final ValueChanged<Menus> onTap;
  final Menus currentIndex;
  const ItemNavigation(
      {super.key, required this.onTap, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyles.paddingPage,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onTap(Menus.students),
            child: currentIndex == Menus.students
                ? Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.foundation,
                    ),
                    child: Text(
                      'Students',
                      style: AppText.smallBold.copyWith(color: AppColors.white),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Students',
                        style:
                            AppText.smallBold.copyWith(color: AppColors.gray1)),
                  ),
          ),
          GestureDetector(
            onTap: () => onTap(Menus.subject),
            child: currentIndex == Menus.subject
                ? Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.foundation,
                    ),
                    child: Text(
                      'Subject',
                      style: AppText.smallBold.copyWith(color: AppColors.white),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Subject',
                        style:
                            AppText.smallBold.copyWith(color: AppColors.gray1)),
                  ),
          ),
          GestureDetector(
            onTap: () => onTap(Menus.evaluation),
            child: currentIndex == Menus.evaluation
                ? Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.foundation,
                    ),
                    child: Text(
                      'Evaluation',
                      style: AppText.smallBold.copyWith(color: AppColors.white),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Evaluation',
                        style:
                            AppText.smallBold.copyWith(color: AppColors.gray1)),
                  ),
          ),
          GestureDetector(
            onTap: () => onTap(Menus.event),
            child: currentIndex == Menus.event
                ? Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.foundation,
                    ),
                    child: Text(
                      'Event',
                      style: AppText.smallBold.copyWith(color: AppColors.white),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Event',
                        style:
                            AppText.smallBold.copyWith(color: AppColors.gray1)),
                  ),
          ),
        ],
      ),
    );
  }
}

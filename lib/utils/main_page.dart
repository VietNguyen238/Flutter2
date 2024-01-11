import 'package:b1/Configs/app_icon.dart';
import 'package:b1/components/bottom_navigation_item.dart';
import 'package:b1/pages/HomePage/index.dart';
import 'package:b1/pages/ListStudent/index.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.archive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MybottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = <Widget>[
    const HomePage(),
    const ListStudent(),
    const Center(
      child: Text('setting'),
    ),
    const Center(
      child: Text('profile'),
    ),
  ];
}

enum Menus { home, archive, setting, profile }

class MybottomNavigation extends StatelessWidget {
  final ValueChanged<Menus> onTap;
  final Menus currentIndex;
  const MybottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.foundation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavigationItem(
            onPressed: () => onTap(Menus.home),
            icon: AppIcons.ic_home,
            name: Menus.home,
            index: currentIndex,
          ),
          BottomNavigationItem(
            onPressed: () => onTap(Menus.archive),
            icon: AppIcons.ic_archive,
            name: Menus.archive,
            index: currentIndex,
          ),
          BottomNavigationItem(
            onPressed: () => onTap(Menus.setting),
            icon: AppIcons.ic_setting,
            name: Menus.setting,
            index: currentIndex,
          ),
          BottomNavigationItem(
            onPressed: () => onTap(Menus.profile),
            icon: AppIcons.ic_profile,
            name: Menus.profile,
            index: currentIndex,
          ),
        ],
      ),
    );
  }
}

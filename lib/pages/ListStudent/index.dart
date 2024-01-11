import 'package:b1/components/app_bar_section.dart';
import 'package:b1/pages/ListStudent/widgets/list_navigation.dart';
import 'package:flutter/material.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            AppBarSection(),
            SizedBox(
              height: 15,
            ),
            ListNavigation(),
          ],
        )),
      ),
    );
  }
}

class ButtonNavigationItem {
  String label;
  IconData icon;
  ButtonNavigationItem({required this.label, required this.icon});
}

List<ButtonNavigationItem> buttonNavigationItem = [
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
  ButtonNavigationItem(icon: Icons.heart_broken, label: 'Đặt lịch Nails'),
];

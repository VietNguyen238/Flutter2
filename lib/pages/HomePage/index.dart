import 'package:b1/Configs/app_icon.dart';
import 'package:b1/components/title_section.dart';
import 'package:b1/pages/HomePage/widgets/beauty_guide.dart';
import 'package:b1/pages/HomePage/widgets/button_filter.dart';
import 'package:b1/pages/HomePage/widgets/greeting.dart';
import 'package:b1/pages/HomePage/widgets/nail_shop.dart';
import 'package:b1/pages/HomePage/widgets/navigation_category.dart';
import 'package:b1/pages/HomePage/widgets/search.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.border,
        body: SingleChildScrollView(
          child: Padding(
            padding: AppStyles.paddingPage,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Greeting(),
                Search(),
                SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: AppStyles.borderRadius,
                  child: Image.asset(AppIcons.im_banner),
                ),
                SizedBox(
                  height: 25,
                ),
                TitleSection(title: 'Danh mục'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 110 * (navigationCategoryItem.length.toDouble() / 3),
                  decoration: BoxDecoration(
                    borderRadius: AppStyles.borderRadius,
                    color: AppColors.white,
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: navigationCategoryItem.length,
                      itemBuilder: (context, index) {
                        final item = navigationCategoryItem[index];
                        return NavigationCategory(
                            label: item.label, icon: item.icon);
                      }),
                ),
                SizedBox(
                  height: 25,
                ),
                TitleSection(
                  title: 'Cẩm nan làm đẹp',
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = beautyGuideItem[index];
                        return BeautyGuide(
                          content: item.content,
                          image: item.image,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: beautyGuideItem.length),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = buttonFilterItem[index];
                        return ButtonFilter(
                          title: item.title,
                          isCurrent: item.isCurrent,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: buttonFilterItem.length),
                ),
                SizedBox(
                  height: 15,
                ),
                TitleSection(
                  title: 'Cửa hàng gần đây',
                  isHidden: false,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: (100 + 10) * nailShopItem.length.toDouble(),
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = nailShopItem[index];
                        return NailShop(
                          title: item.title,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: nailShopItem.length),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonFilterItem {
  bool isCurrent;
  String title;
  ButtonFilterItem({this.isCurrent = false, required this.title});
}

List<ButtonFilterItem> buttonFilterItem = [
  ButtonFilterItem(title: 'Tất cả dịch vụ', isCurrent: true),
  ButtonFilterItem(
    title: 'Spa/Massage',
  ),
  ButtonFilterItem(
    title: 'Nail/Salon',
  ),
];

class BeautyGuideItem {
  String content;
  String image;
  BeautyGuideItem({required this.content, required this.image});
}

List<BeautyGuideItem> beautyGuideItem = [
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
  BeautyGuideItem(image: AppIcons.im_banner, content: 'Đặt lịch Nails'),
];

class NailShopItem {
  String content;
  String title;
  NailShopItem({required this.content, required this.title});
}

List<NailShopItem> nailShopItem = [
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
  NailShopItem(title: 'Tiệm Nails Mai Vy', content: 'Đặt lịch Nails'),
];

class NavigationCategoryItem {
  String label;
  IconData icon;
  NavigationCategoryItem({required this.label, required this.icon});
}

List<NavigationCategoryItem> navigationCategoryItem = [
  NavigationCategoryItem(
      icon: Icons.stacked_bar_chart, label: 'Đặt lịch Nails'),
  NavigationCategoryItem(icon: Icons.access_alarms, label: 'Đặt lịch Spa'),
  NavigationCategoryItem(icon: Icons.album, label: 'Đặt lịch Salon'),
  NavigationCategoryItem(icon: Icons.favorite, label: 'Cửa hàng thân thiết'),
  NavigationCategoryItem(
      icon: Icons.mark_unread_chat_alt, label: 'Hỗ trợ khách hàng'),
  NavigationCategoryItem(icon: Icons.heart_broken, label: 'Mini game'),
];

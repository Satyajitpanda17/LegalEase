import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legalease/core/constants/app_icons.dart';
import 'package:legalease/features/advocates/presentations/screens/lawyer_screen.dart';
import 'package:legalease/features/articles/presentations/screens/article_screen.dart';
import 'package:legalease/features/home/presentations/getx/botttom_nav_bar_controller.dart';
import 'package:legalease/features/home/presentations/screens/home_screen.dart';
import 'package:legalease/features/profile/presentations/screens/profile_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
final BottomNavController controller = Get.put(BottomNavController());
final List<Widget> pages = [
    HomeScreen(),
    LawyerScreen(),
    ArticleScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
     return Obx(() => Scaffold(
          body: pages[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTabIndex,
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(AppIcons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.gavel), // Lawyer Search
                label: "Lawyers",
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.article), // Articles & Amendments
                label: "Articles",
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.profile),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
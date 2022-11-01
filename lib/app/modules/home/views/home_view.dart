import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:saqinah/app/modules/home/widget/homeW.dart';
import 'package:saqinah/app/modules/profile/views/profile_view.dart';
import 'package:saqinah/app/theme.dart';

import '../../history/views/history_view.dart';
import '../../information/views/information_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  HomeController homeC = Get.put(HomeController());

  final screen = [HomeWidget(), HistoryView(),InformationView(),ProfileView()];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenColor,
      body:Obx(() => ( IndexedStack(
                index: homeC.selectedIndex.value,
                children: screen,
              )
          ),
            
        
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE0A2A3),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
              gap: 10,
              color: Color(0xFFD9D9D9),
              backgroundColor: Color(0xFFE0A2A3),
              activeColor: Color(0xFFE0A2A3),
              tabBackgroundColor: Color(0xFFF3F6F6),
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 50),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.history,
                  text: "History",
                ),
                GButton(
                  icon: Icons.info,
                  text: "Information",
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: "Account",
                ),
              ],
              onTabChange: (value) {
                homeC.changeIndex(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}

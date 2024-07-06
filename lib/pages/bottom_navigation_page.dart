import 'package:ecommerce_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../widgets/my_tab.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPage();
}

class _BottomNavigationPage extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: TabBar(
              indicatorPadding: const EdgeInsets.only(bottom: 70),
              indicatorColor: primaryColor,
              unselectedLabelStyle: TextStyle(
                  color: tertiaryColor,
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500),
              labelStyle: TextStyle(
                color: primaryColor,
              ),
              tabs: const [
                MyTab(
                  title: 'Home',
                  iconUrl: 'assets/images/home.png',
                ),
                MyTab(
                  title: 'Wishlist',
                  iconUrl: 'assets/images/heart.png',
                ),
                MyTab(
                  title: 'Transaction',
                  iconUrl: 'assets/images/notes.png',
                ),
                MyTab(
                  title: 'Profile',
                  iconUrl: 'assets/images/profile.png',
                ),
              ]),
          body: TabBarView(
            children: [
              const HomePage(),
              Container(
                  // color: secondaryColor,
                  ),
              Container(
                  // color: primaryColor,
                  ),
              Container(
                  // color: primaryColor,
                  ),
            ],
          )),
    );
  }
}

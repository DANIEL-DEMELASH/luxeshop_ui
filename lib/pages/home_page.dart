import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../widgets/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Container(
                  // color: primaryColor,
                  ),
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

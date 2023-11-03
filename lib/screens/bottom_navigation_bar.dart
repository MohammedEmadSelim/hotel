import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotel_app/screens/bottom_navgation_bar_screens/details.dart';

import 'bottom_navgation_bar_screens/home.dart';
import 'bottom_navgation_bar_screens/home_v2.dart';
import 'bottom_navgation_bar_screens/schedule.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  List<Widget> screens = [Home(), Home_v2(), Details(), Schedule()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0,),
      body: screens[3],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(blurRadius: .1),
            ]),
        child: const GNav(
          padding: EdgeInsets.all(16),
          tabBackgroundColor: Color(0xffF5F5FF),
          activeColor: Color(0xff4C4DDC),
          backgroundColor: Colors.white,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home_max_outlined,
              iconSize: 25,
              text: 'Home',
            ),
            GButton(
              icon: Icons.date_range_outlined,
              iconSize: 25,
              text: 'Schedule',
            ),
            GButton(
              icon: Icons.book_outlined,
              iconSize: 25,
              text: 'Details',
            ),
            GButton(
              icon: Icons.person_outlined,
              iconSize: 25,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

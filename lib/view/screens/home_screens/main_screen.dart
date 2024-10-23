// import 'package:eezimed_deliveries/pages/add-to-cart/bloc/add_to_cart_bloc.dart';

import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/home_screens/home_screen.dart';
import 'package:financialanalysis/view/screens/profile_screens.dart';
import 'package:financialanalysis/view/screens/statistics_screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _selectedIndex = 0;
  static List body = [
    homePage(),
    homePage(),
    StatisticsScreen(),
    ProfileScreen(),
  ];
  void _bottomNAvigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey,
        hoverColor: Colors.blue,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: PrimaryColors.darkblue,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.location_on,
            text: 'Location',
          ),
          GButton(
            icon: Icons.card_travel,
            text: 'Statistics',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

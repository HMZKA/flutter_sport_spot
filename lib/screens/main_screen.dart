import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/screens/booking_screen.dart';

import 'package:flutter_sport_spot/screens/home_screen.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/screens/profile_screen.dart';
import 'package:flutter_sport_spot/screens/services_screen.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List screens = [
    HomeScreen(),
    const ServicesScreen(),
    const BookingScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 184, 184, 184),
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                MyIcons.homeIcon,
              ),
              activeIcon: SvgPicture.asset(
                MyIcons.homeActiveIcon,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(MyIcons.servicesIcon),
              activeIcon: SvgPicture.asset(MyIcons.servicesActiveIcon),
              label: "Services"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_basketball,
              ),
              label: "Booking"),
          const BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: "Profile")
        ],
      ),
    );
  }
}

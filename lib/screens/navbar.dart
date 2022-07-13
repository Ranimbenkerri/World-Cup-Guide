import 'package:flutter/material.dart';

import 'booking_screen.dart';
import 'home_screen.dart';
import 'planning_screen.dart';
import 'visit_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

int _currentIndex = 0;

List _screens = [
  const HomeScreen(),
  const VisitScreen(),
  const BookingScreen(),
  const PlanningScreen(),
];

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 15,
        selectedFontSize: 15,
        selectedItemColor: Colors.white,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, height: 2),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          height: 2,
          color: Color.fromARGB(153, 80, 80, 80),
        ),
        items: [
          customNavBarItem('Home', 'home'),
          customNavBarItem('Visit', 'world'),
          customNavBarItem('booking', 'plane'),
          customNavBarItem('Planning', 'calendar'),
        ],
      ),
    );
  }
}

BottomNavigationBarItem customNavBarItem(String title, String icon) {
  return BottomNavigationBarItem(
    label: title,
    icon: Image.asset(
      'assets/images/$icon.png',
      height: 17,
      color: Colors.white.withOpacity(0.4),
      colorBlendMode: BlendMode.modulate,
    ),
    activeIcon: Image.asset(
      'assets/images/$icon.png',
      height: 17,
    ),
  );
}

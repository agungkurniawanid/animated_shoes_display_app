import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_add_outlined),
      activeIcon: Icon(Icons.bookmark_add),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications_none_outlined),
      activeIcon: Icon(Icons.notifications_none),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people_alt_outlined),
      activeIcon: Icon(Icons.people_alt),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF171717), // Warna latar #171717
          unselectedItemColor: Colors.white, // Icon tidak aktif = putih
          selectedItemColor: Colors.white, // Icon aktif = putih
          items: _bottomNavBarItems,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30.0,
          type: BottomNavigationBarType.fixed,
          onTap: _onNavItemTapped,
        ),
      ),
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

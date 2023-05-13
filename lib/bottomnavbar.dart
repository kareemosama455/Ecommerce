import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'categories.dart';
class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int index = 0;
  final pages = [
    Center(child: Home_screen()),
    Center(child: Categories_screen())
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'home'),
          NavigationDestination(
              icon: Icon(Icons.category_outlined),
              selectedIcon: Icon(Icons.category),
              label: 'category'),
          NavigationDestination(
              icon: Icon(Icons.search_off_outlined),
              selectedIcon: Icon(Icons.search),
              label: 'search'),
          NavigationDestination(
              icon: Icon(Icons.heart_broken_outlined),
              selectedIcon: Icon(Icons.heart_broken),
              label: 'whishlist'),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              selectedIcon: Icon(Icons.person_2),
              label: 'profile')
        ],
      ),
    );
  }
}

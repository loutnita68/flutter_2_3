// import 'dart:developer';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_flutter/Project/home_page.dart';
import 'package:intro_flutter/Project/profile_page.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _HomepageState();
}

class _HomepageState extends State<Pages> {
  int selectIndex = 0;
  // int tapIndex = 0;
  // List<bool> isFavorite = [false, false, false, false];
  List<Widget> pages = [
    HomePage(),
    Center(child: Text("Places")),
    Center(child: Text("Favorites")),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

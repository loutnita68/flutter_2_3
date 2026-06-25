import 'package:flutter/material.dart';
import 'package:intro_flutter/Widget/chatview_builder.dart';
// import 'package:intro_flutter/Widget/register_textfield.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.notifications), text: "Notification"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Center(child: Text("Home Screen"),),
            ListViewbuilder(),
            Center(child: Text("Search Screen")),
            Center(child: Text("Profile Screen")),
            Center(child: Text("Notification Screen")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Flutter App"),
        actions: [Icon(Icons.search), Icon(Icons.notifications)],
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(
          "https://i.pinimg.com/1200x/b9/b2/df/b9b2dfd5b399b1c63fca13c2e5e4e7f5.jpg ",
          width: 400,
          height: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

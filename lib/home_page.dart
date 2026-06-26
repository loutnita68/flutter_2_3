import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Flutter Developer"),
        actions: [Icon(Icons.search), Icon(Icons.notifications)],
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(
          "https://media-cdn.tripadvisor.com/media/photo-s/05/22/b8/cb/sunrise-angkor-wat-with.jpg",
          width: 400,
          height: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});
  List<int> item = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView.builder")),
      body: Container(
        width: double.infinity,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Center(child: Text("$index")),
              ),
            );
          },
        ),
      ),
    );
  }
}

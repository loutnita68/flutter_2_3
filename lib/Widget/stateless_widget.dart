import 'dart:developer';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  counter--;
                });

                log("count = $counter");
              },
              icon: Icon(Icons.remove_circle, size: 60, color: Colors.red),
            ),
            Text("$counter", style: TextStyle(fontSize: 50)),
            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
                log("count = $counter");
              },
              icon: Icon(Icons.add_circle, size: 60, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

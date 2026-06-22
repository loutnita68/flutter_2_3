import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack Widget",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: 400,
        height: 400,
        color: Colors.grey,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.amber),
            Positioned(
              top: 200,
              left: 200,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.greenAccent,
              ),
            ),
            Positioned(
              top: 150,
              left: 150,
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

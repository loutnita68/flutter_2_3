import 'dart:developer';

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key});
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter username",
                suffixIcon: Icon(Icons.face),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                fixedSize: Size(400, 50),
              ),
              onPressed: () {
                log(username.text);
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

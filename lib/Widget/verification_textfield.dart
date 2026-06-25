import 'dart:developer';

import 'package:flutter/material.dart';

class VerificationTextfield extends StatelessWidget {
  VerificationTextfield({super.key});
  TextEditingController verify = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text("Login"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your Verification Code",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [box(), box(), box(), box()],
                ),
                SizedBox(height: 10),
                Text(
                  "04:59",
                  style: TextStyle(fontSize: 20, color: Colors.orangeAccent),
                ),

                SizedBox(height: 10),

                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "We send verification code to your email ",
                      ),
                      TextSpan(
                        text: "nita*****@gmail.com",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ". You can check your inbox."),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  "I don't recieved the code ? Send again",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 60),
                  ),
                  onPressed: () {
                    log(verify.text);
                  },
                  child: Text("Verify", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget box() {
  return SizedBox(
    width: 60,
    height: 70,
    child: TextField(
      textAlign: TextAlign.center,
      maxLength: 1,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
      decoration: InputDecoration(
        counterText: "",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    ),
  );
}

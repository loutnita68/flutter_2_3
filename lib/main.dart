import 'package:flutter/material.dart';
import 'package:intro_flutter/Project/app_flutter.dart';
import 'package:intro_flutter/Project/profile_page.dart';

void main() {
  runApp(MyApp()); // to call first app to run
}

// this code below come from stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Pages());
  }
}

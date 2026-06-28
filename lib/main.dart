import 'package:flutter/material.dart';
import 'package:intro_flutter/Project/app_flutter.dart';
// import 'package:intro_flutter/Project/app_flutter.dart';
// import 'package:intro_flutter/Widget/bottom_nav.dart';
// import 'package:intro_flutter/Widget/stateless_widget.dart';
// import 'package:intro_flutter/Widget/login_textfield.dart';
// import 'package:intro_flutter/Widget/register_textfield.dart';
// import 'package:intro_flutter/Widget/tabbar.dart';
// import 'package:intro_flutter/home_page.dart';
// import 'package:intro_flutter/Widget/verification_textfield.dart';
// import 'package:intro_flutter/Widget/burger_gridview.dart';
// import 'package:intro_flutter/Widget/text_field.dart';

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

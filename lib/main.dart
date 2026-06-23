import 'package:flutter/material.dart';
// import 'package:intro_flutter/Widget/burger_gridview.dart';
import 'package:intro_flutter/Widget/text_field.dart';

void main() {
  runApp(MyApp()); // to call first app to run
}

// this code below come from stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldWidget(),
      // debugShowCheckedModeBanner: false,
      // home: ListViewBuilder(),
    );
  }
}

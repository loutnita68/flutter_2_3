import 'package:flutter/material.dart';

// import 'package:intro_flutter/Widget/chatview_builder.dart';
import 'package:intro_flutter/Widget/gridview.dart';
import 'package:intro_flutter/Widget/test_gridview.dart';
import 'package:intro_flutter/Widget/test_list_view.dart';

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
      home: TestGridview(),
      // debugShowCheckedModeBanner: false,
      // home: ListViewBuilder(),
    );
  }
}

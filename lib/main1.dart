import 'package:flutter/material.dart';
// import 'package:intro_flutter/Widget/Stack_Widget/example_stack.dart';
// import 'package:intro_flutter/Widget/listtitle_widget.dart';
// import 'package:intro_flutter/Widget/Homework/hwrow_column.dart';
// import 'package:intro_flutter/Widget/Stack_Widget/stack_widget.dart';
// import 'package:intro_flutter/Widget/demo.dart';
// import 'package:intro_flutter/Widget/homework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // home: is property and AppBar() is Widget
    // home: Scaffold(
    //   appBar: AppBar(
    //     leading: Icon(Icons.menu),
    //     backgroundColor: Colors.blue,
    //     title: Text("Flutter"),
    //     centerTitle: true,
    //     actions: [
    //       Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
    //     ],
    //   ),
    //   // body: Center(
    //   //   child: Text(
    //   //     "Body",
    //   //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //   //   ),
    //   // ),
    //   body: Center(
    //     child: Container(
    //       width: 200,
    //       height: 200,
    //       decoration: BoxDecoration(
    //         color: Colors.lightGreen,
    //         borderRadius: BorderRadius.circular(30),
    //       ),
    //       child: Center(
    //         child: Text("Container", style: TextStyle(fontSize: 30)),
    //       ),
    //     ),
    //   ),
    // ),
    // return MaterialApp(debugShowCheckedModeBanner: false, home: Layout());
    // return MaterialApp(debugShowCheckedModeBanner: false, home: ExRowColumn());
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HwRow_Clolumn(),
    // );
    // return MaterialApp(debugShowCheckedModeBanner: false, home: StackWidget());
    // return MaterialApp(debugShowCheckedModeBanner: false, home: Profile());
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // home: ListtitleWidget(),
    );
  }
}

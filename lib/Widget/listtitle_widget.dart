import 'package:flutter/material.dart';

class ListtitleWidget extends StatelessWidget {
  const ListtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Title Widget")),

      // body: Column(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text(
      //         "Profile",
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      //       ),
      //       subtitle: Text("go to profile"),
      //       trailing: Icon(Icons.arrow_forward_ios),

      //       onTap: () {},
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.settings),
      //       title: Text(
      //         "Setting",
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      //       ),
      //       subtitle: Text("go to setting"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       onTap: () {},
      //     ),
      //   ],
      // ),
      body: Container(
        width: double.infinity,
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(width: 100, height: 100, color: Colors.amber),
            SizedBox(width: 100),
            Container(width: 100, height: 100, color: Colors.blue),
            SizedBox(width: 100),
            Container(width: 100, height: 100, color: Colors.red),
            SizedBox(width: 100),
            Container(width: 100, height: 100, color: Colors.deepPurple),
            SizedBox(width: 100),
            Container(width: 100, height: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

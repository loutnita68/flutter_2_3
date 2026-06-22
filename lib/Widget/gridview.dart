import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView")),

      /*           Grid View */
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView(
      //     // Main goal
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 20,
      //       crossAxisSpacing: 20,
      //       childAspectRatio: 10 / 10, // widght/height
      //     ),
      //     children: [
      //       Container(
      //         // color: Colors.green,
      //         child: Image(
      //           image: NetworkImage(
      //             "https://i.pinimg.com/736x/9d/ee/af/9deeaf7718a5394012c034bce8330e33.jpg",
      //           ),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       Container(
      //         // color: Colors.green,
      //         child: Image(
      //           image: NetworkImage(
      //             "https://i.pinimg.com/1200x/8e/6c/8e/8e6c8ef5342da2c785a8d9623652ad61.jpg",
      //           ),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       Container(
      //         // color: Colors.green,
      //         child: Image(
      //           image: NetworkImage(
      //             "https://i.pinimg.com/1200x/b5/e4/c1/b5e4c13d0b3d8c065a500f9da68583bb.jpg",
      //           ),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       Container(
      //         // color: Colors.green,
      //         child: Image(
      //           image: NetworkImage(
      //             "https://i.pinimg.com/736x/84/48/e3/8448e33cc4f244d660566aaa7ac910ad.jpg",
      //           ),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      /*           Grid View  builder           */
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 20,
      //     crossAxisSpacing: 20,
      //   ),
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.blue,
      //       child: Center(child: Text("$index")),
      //     );
      //   },
      // ),
      /*           Grid View             */
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 8 / 11,
          ),
          children: [
            cardGrid(
              name: "Pizza",
              price: 15.99,
              image:
                  "https://i.pinimg.com/1200x/9e/8b/6e/9e8b6ed6ee305de7e556f0480b7443b5.jpg",
            ),
            cardGrid(
              name: "Burger",
              price: 3.99,
              image:
                  "https://i.pinimg.com/736x/d2/bf/b5/d2bfb5ea68835cdbb2d4288b33501f18.jpg",
            ),
            cardGrid(
              name: "Matcha",
              price: 2.99,
              image:
                  "https://i.pinimg.com/736x/8d/dd/b4/8dddb475024ec916ee7840f65dfee192.jpg",
            ),
            cardGrid(
              name: "Ice latte",
              price: 2.99,
              image:
                  "https://i.pinimg.com/736x/b2/a9/f6/b2a9f654bb07b9e833a135770db56635.jpg",
            ),
            cardGrid(
              name: "Cake",
              price: 5.50,
              image:
                  "https://i.pinimg.com/1200x/cb/13/47/cb1347fc2075531465979c2437f4f3e3.jpg",
            ),
            cardGrid(
              name: "Noodle",
              price: 3.25,
              image:
                  "https://i.pinimg.com/1200x/50/8f/81/508f813dab1929bf6998931fc0eea18d.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardGrid({
  required String name,
  required double price,
  required String image,
}) {
  return Card(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                image,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.broken_image_outlined, size: 150),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price.toString() + "\$",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add_circle_outline, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

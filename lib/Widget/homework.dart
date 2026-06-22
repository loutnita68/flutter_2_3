// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Layout Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 165, 26, 200),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: 600,
        height: 800,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Image.network(
              "https://i.pinimg.com/736x/44/6e/1d/446e1d4fd6b2f3e63a2d0b4b3aa00d88.jpg",
              width: 400,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Timeless Beauty of Lucerne",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Switzerland",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Text("41", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(Icons.call, color: Colors.purple),
                      Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.near_me, color: Colors.purple),
                    Text(
                      "ROUTE",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.purple),
                    Text(
                      "SHARE",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Experience the breathtaking charm of Lucerne, where the iconic Chapel Bridge stretches gracefully across the turquoise waters of the Reuss River. Framed by colorful flowers, historic architecture, and the majestic peaks of Mount Pilatus in the distance, this picturesque Swiss destination blends medieval history with stunning alpine scenery.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

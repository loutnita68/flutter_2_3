import 'package:flutter/material.dart';

class ExRowColumn extends StatelessWidget {
  const ExRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Layout Demo",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            "https://i.pinimg.com/1200x/ac/42/0b/ac420b1f4da7c5563de1908debb75143.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Timeless Beauty of Lucerne",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Switzerland", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 30, color: Colors.deepOrange),
                    Text(
                      "41",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, size: 28, color: Colors.deepPurpleAccent),
                  Text(
                    "Call",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.near_me, size: 28, color: Colors.deepPurpleAccent),
                  Text(
                    "Route",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, size: 28, color: Colors.deepPurpleAccent),
                  Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Experience the breathtaking charm of Lucerne, where the iconic Chapel Bridge stretches gracefully across the turquoise waters of the Reuss River. Framed by colorful flowers, historic architecture, and the majestic peaks of Mount Pilatus in the distance, this picturesque Swiss destination blends medieval history with stunning alpine scenery.",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}

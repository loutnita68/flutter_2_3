import 'package:flutter/material.dart';

class HwRow_Clolumn extends StatelessWidget {
  const HwRow_Clolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back, size: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.favorite, size: 30, color: Colors.red),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.network(
            "https://i.pinimg.com/736x/b5/0d/22/b50d22aed638664f17fe53e43680d7c8.jpg",
            // height: 350,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Double Beef Burger",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Burgur",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "2.5\$",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Indulge in the ultimate burger experience with our Double Beef Burger. Made with two tender grilled beef patties, layers of melted cheese, fresh lettuce, ripe tomatoes, and crunchy onions, this burger is finished with our special house sauce and served on a soft toasted bun.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Size",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "S",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "M",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "L",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "XL",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Icon(Icons.remove, color: Colors.white),
              ),
              SizedBox(width: 15),
              Text(
                "0",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),

              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),

              SizedBox(width: 50),

              Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

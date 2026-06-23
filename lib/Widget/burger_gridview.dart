import 'package:flutter/material.dart';

class BurgerGridview extends StatelessWidget {
  const BurgerGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 15),

                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 225, 225),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BURGER",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.amber),
                      ],
                    ),
                  ),

                  Spacer(),

                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.search_outlined, color: Colors.white),
                  ),
                  Icon(Icons.tune_rounded, size: 40),
                ],
              ),
            ),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  "Popular Burgers",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Expanded(
              child: GridView.count(
                padding: EdgeInsets.only(top: 5),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 8 / 12,
                children: [
                  cartWidget(
                    name: "Smokin'Burger",
                    title: "Confenio Rest",
                    price: 60,
                    image:
                        "https://i.pinimg.com/1200x/42/c8/12/42c81248c35a8fed91c98154d542cd56.jpg",
                  ),
                  cartWidget(
                    name: "Buffalo Burgers",
                    title: "Koji Firm kitchen",
                    price: 75,
                    image:
                        "https://i.pinimg.com/1200x/a8/4f/b2/a84fb2531583cd10e047d081bf557ff0.jpg",
                  ),
                  cartWidget(
                    name: "Bullseye Burgers",
                    title: "Kabab Restaurant",
                    price: 94,
                    image:
                        "https://i.pinimg.com/736x/e2/77/3e/e2773eb67f0275afe6a33de2e32b0de8.jpg",
                  ),
                  cartWidget(
                    name: "Burger Bistro",
                    title: "Rose Gorden",
                    price: 40,
                    image:
                        "https://i.pinimg.com/1200x/24/19/9e/24199e45760f2a2a6bb47e6ef4f3f3fa.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cartWidget({
  required String name,
  required String title,
  required double price,
  required String image,
}) {
  return Card(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price.toString() + "\$",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add_circle_outlined, color: Colors.orange, size: 40),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

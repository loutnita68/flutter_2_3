// import 'dart:developer';

import 'dart:developer';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectIndex = 0;
  int tapIndex = 0;
  List<bool> isFavorite = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, size: 40),
        title: Text(
          "Visit Cambodia",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/11/50/10/1150106db13b0cae280f5165a8632b71.jpg",
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  "https://i.pinimg.com/1200x/82/70/19/827019accc86c41800d2f61f6740d0d5.jpg",
                  width: double.infinity,
                  height: 500,
                ),
                Positioned(
                  top: 250,
                  // left: 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover Beautiful \nPlaces In Camboida",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              86,
                              152,
                              87,
                            ),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text("Explore Now"),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  right: 15,

                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search temples, cities, tours...",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 4),
              child: SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          tapIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tapIndex == 0
                                ? Colors.amberAccent
                                : Colors.grey,
                            width: 2,
                          ),
                          color: tapIndex == 0 ? Colors.amberAccent : null,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text("Temples", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tapIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tapIndex == 1
                                ? Colors.amberAccent
                                : Colors.grey,
                            width: 2,
                          ),
                          color: tapIndex == 1 ? Colors.amberAccent : null,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text("Nature", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tapIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tapIndex == 2
                                ? Colors.amberAccent
                                : Colors.grey,
                            width: 2,
                          ),
                          color: tapIndex == 2 ? Colors.amberAccent : null,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Street Food",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tapIndex = 3;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tapIndex == 3
                                ? Colors.amberAccent
                                : Colors.grey,
                            width: 2,
                          ),
                          color: tapIndex == 3 ? Colors.amberAccent : null,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text("island", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // SizedBox(width: 8),
                  ],
                ),
              ),
            ),

            // SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 4),
              child: Text(
                "Feature",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://i.pinimg.com/1200x/2e/34/a6/2e34a69715ec323e040b5ff316ce948e.jpg",
                            width: 300,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite[0] = !isFavorite[0];
                                });
                              },
                              icon: Icon(
                                isFavorite[0]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 15),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://i.pinimg.com/736x/f2/01/ff/f201ff75edc2ffc92e8a462b0671f815.jpg",
                            width: 300,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite[1] = !isFavorite[1];
                                });
                              },
                              icon: Icon(
                                isFavorite[1]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 15),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://i.pinimg.com/736x/dc/18/8a/dc188a6b6571753ff1e08cee25fe96ec.jpg",
                            width: 300,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite[2] = !isFavorite[2];
                                });
                              },
                              icon: Icon(
                                isFavorite[2]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 15),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://i.pinimg.com/736x/55/3c/2b/553c2b4f8260f94e73689f224752eb6d.jpg",
                            width: 300,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite[3] = !isFavorite[3];
                                });
                              },
                              icon: Icon(
                                isFavorite[3]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

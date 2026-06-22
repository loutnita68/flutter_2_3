import 'package:flutter/material.dart';

class TestListReview extends StatelessWidget {
  const TestListReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messager",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Chat Room",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 100,
            // clipBehavior: Clip.none,
            // color: Colors.blue,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      // clipBehavior: Clip.none,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // color: Colors.amber,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/736x/a4/98/49/a498494294e2c0b4433d092877df7444.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // SizedBox(height: 4),
                    // Text("Ning"),
                  ],
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/1200x/4c/2b/13/4c2b138c902368e3fee2221308de8951.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/c0/1c/43/c01c43422cde952dd3ced914dfb14aba.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/a2/02/45/a202458fd4945af65243ab28fab292d7.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/1200x/d7/c7/0f/d7c70f9b3b7dfd4944940a548732209b.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/62/d4/f4/62d4f4757b22b85764323b29425f7aa0.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(27),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/736x/62/d4/f4/62d4f4757b22b85764323b29425f7aa0.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Gojo Saturu",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Hi, nice to meet you. How can I help...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(27),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/1200x/d7/c7/0f/d7c70f9b3b7dfd4944940a548732209b.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Alice",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Hi, nice to meet you. How can I help...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(27),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/736x/a4/98/49/a498494294e2c0b4433d092877df7444.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Meow",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Hi, nice to meet you. How can I help...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(27),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/736x/a2/02/45/a202458fd4945af65243ab28fab292d7.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Ms. Black",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Hi, nice to meet you. How can I help...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(27),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/1200x/4c/2b/13/4c2b138c902368e3fee2221308de8951.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Money Money",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        fontWeight: FontWeight.w100,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Hi, nice to meet you. How can I help...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

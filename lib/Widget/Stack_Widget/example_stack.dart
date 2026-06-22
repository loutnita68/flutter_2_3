import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/a6/ed/3f/a6ed3f38676d4eeb814b0b4c4f9a1753.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 150,
              right: 20,
              child: Icon(Icons.camera_alt, size: 40),
            ),

            Positioned(
              top: 150,
              right: 140,
              child: Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/1200x/ca/66/ca/ca66ca1001a659e63159b6abe5a3e19d.jpg",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    right: 0,
                    child: Icon(Icons.camera_alt, size: 40),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 310,
              right: 160,
              child: Text(
                "Nita Lot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

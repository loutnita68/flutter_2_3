import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, size: 40),
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 82, 131, 84),
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/11/50/10/1150106db13b0cae280f5165a8632b71.jpg",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 150, // Adjust these values
                    bottom: 05,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color.fromARGB(255, 187, 233, 189),
                      child: Icon(Icons.edit, size: 30),
                    ), // child:
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Meow Meow",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text("meowkh@gmail.com", style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_location_alt_sharp),
                    Text(
                      "Phnom Penh, Cambodia",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                height: 60,

                child: Card(
                  color: const Color.fromARGB(255, 16, 132, 76),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings),
                          Text("Setting", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: 400,
                height: 70,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 30,
                          height: 25,
                          color: Colors.yellowAccent,
                          child: Icon(Icons.map),
                        ),
                      ),
                      Text("My Travel History", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 122),
                      Padding(
                        padding: EdgeInsets.only(right: 16),

                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_forward_ios, size: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 70,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 30,
                          height: 25,
                          color: Colors.yellowAccent,
                          child: Icon(Icons.favorite_border),
                        ),
                      ),
                      Text("Save Destinations", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 118),
                      Padding(
                        padding: EdgeInsets.only(right: 16),

                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_forward_ios, size: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 70,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 30,
                          height: 25,
                          color: Colors.yellowAccent,
                          child: Icon(Icons.edit_document),
                        ),
                      ),
                      Text("Booking Documents", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 98),
                      Padding(
                        padding: EdgeInsets.only(right: 16),

                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_forward_ios, size: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                height: 70,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 30,
                          height: 25,
                          color: Colors.redAccent,
                          child: Icon(Icons.logout_outlined),
                        ),
                      ),
                      Text("Log Out", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 211),
                      Padding(
                        padding: EdgeInsets.only(right: 16),

                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_forward_ios, size: 25),
                        ),
                      ),
                    ],
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

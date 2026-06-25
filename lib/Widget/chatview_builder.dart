import 'package:flutter/material.dart';

class ListViewbuilder extends StatelessWidget {
  ListViewbuilder({super.key});
  List<int> item = [1, 2, 3, 4, 5, 6, 7, 8, 89, 10];
  List<User> user = [
    User(
      profile:
          "https://i.pinimg.com/1200x/89/7b/aa/897baa3bc3456bd9416123f4e9d0dfcd.jpg",
      username: "Ling Ling",
    ),
    User(
      profile:
          "https://i.pinimg.com/1200x/42/40/5e/42405ed0f0a4774d6bd6dc782940571f.jpg",
      username: "Ah Ji",
    ),
    User(
      profile:
          "https://i.pinimg.com/1200x/ca/66/ca/ca66ca1001a659e63159b6abe5a3e19d.jpg",
      username: "Ah Jing",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/65/37/66/653766581f38c44404e312f266f98d45.jpg",
      username: "Fongyi",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/9d/9f/e0/9d9fe08a397670cf7aa24facaddcceee.jpg",
      username: "Tong Tong",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/30/48/8c/30488c1c079ece999555f9b8fc67fa53.jpg",
      username: "Wuxie",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/7f/71/84/7f71846af50f24cf1b8bbde8f13129a8.jpg",
      username: "Yuan'er",
    ),
    User(
      profile:
          "https://i.pinimg.com/1200x/65/76/d6/6576d61b865af37cf9e3180ca15e5cd7.jpg",
      username: "Xuan'er",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/9d/f3/3a/9df33a6094270bf728034a5245434f67.jpg",
      username: "Yixing",
    ),
    User(
      profile:
          "https://i.pinimg.com/736x/21/2d/66/212d661b5dee0168f4c2967a655a1ea6.jpg",
      username: "Yibo",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Messager")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(children: [Icon(Icons.search), Text("Search")]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: user.length,

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              "${user[index].profile}",
                            ),
                          ),

                          SizedBox(height: 5),
                          Text(
                            "${user[index].username}",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: user.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user[index].profile),
                    ),
                    title: Text(user[index].username),
                    subtitle: Text("I Love You so much"),
                    trailing: Text("9:30 PM"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class User {
  String profile;
  String username;

  User({required this.profile, required this.username});
}

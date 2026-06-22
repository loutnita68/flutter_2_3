import 'package:flutter/material.dart';

class TestGridview extends StatelessWidget {
  const TestGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.network(
              "https://i.pinimg.com/736x/39/30/95/3930956363963bbdc319b8ddcdf4658c.jpg",
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HEADER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "ACLEDA",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: const NetworkImage(
                              "https://i.pinimg.com/736x/fc/f0/36/fcf036b71971b0ed73b41423f1107a30.jpg",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.notifications, size: 30),
                          SizedBox(width: 10),
                          Icon(Icons.qr_code_2, color: Colors.red, size: 30),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // PROFILE
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: const NetworkImage(
                          "https://i.pinimg.com/736x/50/d3/49/50d349a9c2c42183067d44fe77bf026a.jpg",
                        ),
                      ),
                      const SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Hello, Nita", style: TextStyle(fontSize: 18)),
                          Row(
                            children: [
                              Text("Profile"),
                              Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ACCOUNT CARD
                  Card(
                    color: const Color.fromARGB(255, 106, 203, 248),
                    child: Container(
                      height: 160,
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator(
                                    value: 0.8,
                                    color: Colors.blue,
                                    backgroundColor: Colors.yellow,
                                    strokeWidth: 8,
                                  ),
                                ),

                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: const NetworkImage(
                                        "https://i.pinimg.com/736x/00/dd/95/00dd95e5b6ad29f8ab65193c11066a6e.jpg",
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("Account"),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const Spacer(),

                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Balance",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$1,000,000",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\៛50,000,000",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    children: [
                      cardGrid(
                        text: "Payment",
                        icons: Icons.receipt_long_rounded,
                      ),
                      cardGrid(
                        text: "Mobile Top-up",
                        icons: Icons.phone_android_outlined,
                      ),
                      cardGrid(
                        text: "Transfers",
                        icons: Icons.swap_horiz_outlined,
                      ),
                      cardGrid(text: "Pay-Me", icons: Icons.receipt),
                      cardGrid(
                        text: "Scan QR",
                        icons: Icons.qr_code_scanner_outlined,
                      ),
                      cardGrid(
                        text: "Accounts",
                        icons: Icons.account_balance_wallet,
                      ),
                      cardGrid(
                        text: "Deposits",
                        icons: Icons.show_chart_outlined,
                      ),
                      cardGrid(
                        text: "loans",
                        icons: Icons.currency_exchange_outlined,
                      ),
                      cardGrid(text: "Quick Cash", icons: Icons.money),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        horizontalCard(text: "My point", icons: Icons.star),
                        horizontalCard(
                          text: "Toanchet Pay",
                          icons: Icons.store,
                        ),
                        horizontalCard(
                          text: "Public Services",
                          icons: Icons.account_balance,
                        ),
                        horizontalCard(
                          text: "CSX Trade",
                          icons: Icons.show_chart,
                        ),
                        horizontalCard(
                          text: "Cambodia Market",
                          icons: Icons.storefront,
                        ),
                        horizontalCard(
                          text: "Exchange Rate",
                          icons: Icons.currency_exchange,
                        ),
                        horizontalCard(
                          text: "Account Summary",
                          icons: Icons.account_balance_wallet,
                        ),
                        horizontalCard(
                          text: "Locator",
                          icons: Icons.location_on,
                        ),
                        horizontalCard(text: "Pay-Me", icons: Icons.qr_code),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cardGrid({required String text, required IconData icons}) {
  return Card(
    color: const Color.fromARGB(255, 106, 203, 248),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Icon(icons, size: 35)),
          SizedBox(height: 6),
          SizedBox(
            width: double.infinity,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget horizontalCard({required String text, required IconData icons}) {
  return Card(
    color: const Color.fromARGB(255, 106, 203, 248),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icons, size: 35),
          const SizedBox(height: 6),
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

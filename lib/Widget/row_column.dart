import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Widget")),
      // appBar: AppBar(title: Text("Row Widget")),
      // body: Row(
      //   children: [
      //     Expanded(
      //       child: Container(width: 200, height: 200, color: Colors.amber),
      //     ),

      //     Expanded(
      //       flex: 2,
      //       child: Container(width: 200, height: 200, color: Colors.red),
      //     ),

      //     Expanded(
      //       child: Container(width: 200, height: 200, color: Colors.blue),
      //     ),
      //   ],
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(50),
      //       child: Image.network(
      //         "https://i.pinimg.com/736x/3a/79/c7/3a79c76ceabd4a0aa4e284bdc8102f57.jpg",
      //         width: 100,
      //         height: 100,
      //       ),
      //     ),
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(50),
      //       child: Image.network(
      //         "https://i.pinimg.com/736x/64/3d/ad/643dadcd8e1aa3e0f5d9755da334efbe.jpg",
      //         width: 100,
      //         height: 100,
      //       ),
      //     ),
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(50),
      //       child: Image.network(
      //         "https://i.pinimg.com/736x/77/46/f4/7746f451bde9a89a29cb5d2488d8e79b.jpg",
      //         width: 100,
      //         height: 100,
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
        width: double.infinity,
        height: 600,
        color: const Color.fromARGB(255, 12, 221, 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://i.pinimg.com/736x/42/2c/2e/422c2e649799697f1d1355ba8f308edd.jpg",
              width: 100,
            ),
            Image.network(
              "https://i.pinimg.com/736x/24/1d/ab/241dab332d04e2176428eab4cd989bf3.jpg",
              width: 100,
            ),
            Image.network(
              "https://i.pinimg.com/736x/c4/47/60/c447607575512d9be95c718a2a0bd869.jpg",
              width: 100,
            ),
            Image.network(
              "https://i.pinimg.com/736x/7e/59/7e/7e597e3d41a554e91436663d97abc943.jpg",
              width: 100,
            ),
            Image.network(
              "https://i.pinimg.com/736x/eb/d0/74/ebd074d384cdc084c516e4db3bc85558.jpg",
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}

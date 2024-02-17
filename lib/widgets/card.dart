import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   color: Colors.white,
          //   height: 100,
          //   width: 100,
          //   child: Image(
          //     image: NetworkImage("https://picsum.photos/200/300"),
          //   ),
          // ),
          Container(
            color: Colors.white,
            height: 100,
            width: 100,
            child: Image(image: AssetImage('image/laptop.jpg')),
          ),
          const Column(
            children: [
              Text(
                "Farhan Ibrahim",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      );
    }

    return MaterialApp(
      title: "My Profile",
      home: Scaffold(
        body: Container(
          width: 400,
          color: Colors.grey[100],
          padding: const EdgeInsets.all(20),
          child: Container(
            // height: 200,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                card(),
                card(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(
                    //   color: Colors.white,
                    //   height: 100,
                    //   width: 100,
                    //   child: Image(
                    //     image: NetworkImage("https://picsum.photos/200/300"),
                    //   ),
                    // ),
                    Container(
                      color: Colors.white,
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('image/laptop.jpg')),
                    ),
                    const Column(
                      children: [
                        Text(
                          "Farhan Ibrahim",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Software Engineer",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

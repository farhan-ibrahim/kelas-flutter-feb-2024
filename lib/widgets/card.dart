import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: 100,
            child: const Image(image: AssetImage('image/laptop.jpg')),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle, size: 30),
                  Text(
                    "Farhan Ibrahim",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.work, size: 30),
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
      );
    }

    return MaterialApp(
      title: "My Profile",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [card()],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card(String name) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: 100,
            child: Image(
              image: NetworkImage("https://picsum.photos/200/300"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle, size: 30),
                  Text(
                    name,
                    style: const TextStyle(
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
                  const Text(
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

    final List names = ["Remi", "Farhan", "Don", "Ching", "Siti"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
      ),
      backgroundColor: Colors.purple[300],
      body: SafeArea(
        child: Container(
            child: Column(
          children: names.map((name) => card(name)).toList(),
        )),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/form");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

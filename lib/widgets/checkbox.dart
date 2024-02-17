import 'package:flutter/material.dart';

class CheckerBoard extends StatelessWidget {
  const CheckerBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Checkerboard",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
          backgroundColor: Colors.purple[600],
        ),
        body: Container(
            color: Colors.red[200],
            height: 500,
            // width: 250,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red[600],
                      child: const Center(
                        child: Text("Hello World"),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: const Center(
                        child: Text("Hello World"),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red[400],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red[300],
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue[600],
                  child: const Center(
                    child: Text("Hello World"),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text("Hello World"),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue[400],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue[300],
                )
              ],
            )),
        backgroundColor: Colors.purple[100],
      ),
    );
  }
}

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
          title: const Text("CheckerBoard"),
          backgroundColor: Colors.purple[600],
        ),
        body: Container(
            color: Colors.red[200],
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[600],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[400],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[300],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[600],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[400],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[300],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[600],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[400],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red[300],
                    )
                  ],
                ),
              ],
            )),
        backgroundColor: Colors.purple[100],
      ),
    );
  }
}

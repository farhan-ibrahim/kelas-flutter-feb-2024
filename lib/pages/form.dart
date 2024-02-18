import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  double result = 0;

  @override
  Widget build(BuildContext context) {
    TextEditingController _weight = TextEditingController();
    TextEditingController _height = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: _weight,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Weight"),
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: _height,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Height"),
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("WEIGHT ${_weight.text.runtimeType}");
                    print("HEIGHT ${_height.text.runtimeType}");

                    double weight = double.parse(_weight.text);
                    double height = double.parse(_height.text);

                    print("WEIGHT ${weight.runtimeType}");
                    print("HEIGHT ${weight.runtimeType}");

                    final bmi = weight / (height * height);
                    setState(() {
                      result = bmi;
                    });

                    print("MY BMI $bmi");
                  },
                  child: Text("Calculate"),
                  style: ButtonStyle(),
                ),
                if (result > 0) ...[
                  Text("My BMI is $result"),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

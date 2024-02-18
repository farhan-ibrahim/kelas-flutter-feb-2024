import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController companyCtrl = TextEditingController();
  TextEditingController positionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new contact"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: nameCtrl,
                decoration: const InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  print("Name field $value");
                  if (value == null || value == '') {
                    return "Name is required";
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                controller: positionCtrl,
                decoration: const InputDecoration(
                  label: Text("Position"),
                  border: OutlineInputBorder(),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                controller: companyCtrl,
                decoration: const InputDecoration(
                  label: Text("Company"),
                  border: OutlineInputBorder(),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                controller: phoneCtrl,
                decoration: const InputDecoration(
                  label: Text("Phone"),
                  border: OutlineInputBorder(),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                },
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

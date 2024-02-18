import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/contact.dart';
import 'package:my_flutter_app/repository/contacts.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final contactRepo = ContactRepository();
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
        // Form key
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // Name field
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
                validator: (String? value) {
                  print("Position field $value");
                  if (value == null || value == '') {
                    return "Position is required";
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                controller: companyCtrl,
                decoration: const InputDecoration(
                  label: Text("Company"),
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  print("Company field $value");
                  if (value == null || value == '') {
                    return "Company is required";
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                controller: phoneCtrl,
                decoration: const InputDecoration(
                  label: Text("Phone"),
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  print("Phone field $value");
                  if (value == null || value == '') {
                    return "Phone is required";
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              // Submit button
              ElevatedButton(
                onPressed: () {
                  final name = nameCtrl.text;
                  final position = positionCtrl.text;
                  final company = companyCtrl.text;
                  final phone = phoneCtrl.text;

                  print("$name, $position, $company, $phone");

                  final isValid = _formKey.currentState!.validate();

                  if (isValid) {
                    contactRepo.addNewContact(
                      Contact(
                        name: name,
                        position: position,
                        company: company,
                        phone: phone,
                      ),
                    );
                  }

                  // // Connect with firestore
                  // final db = FirebaseFirestore.instance;

                  // // Find the collection
                  // final contacts = db.collection("contacts");

                  // // Add/set new document to the collection
                  // // Add using Map
                  // contacts.add({
                  //   "name": name,
                  //   "position": position,
                  //   "company": company,
                  //   "phone": phone
                  // });
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

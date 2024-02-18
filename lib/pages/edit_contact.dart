import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/contact.dart';
import 'package:my_flutter_app/repository/contacts.dart';

class EditContact extends StatefulWidget {
  final Contact contact;
  const EditContact({super.key, required this.contact});

  @override
  State<EditContact> createState() => _EditContactState();
}

class _EditContactState extends State<EditContact> {
  final contactRepo = ContactRepository();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // get the info from Provider

  @override
  Widget build(BuildContext context) {
    final selectedContact = widget.contact;

    TextEditingController nameCtrl =
        TextEditingController(text: widget.contact.name);
    TextEditingController phoneCtrl =
        TextEditingController(text: widget.contact.phone);
    TextEditingController companyCtrl =
        TextEditingController(text: widget.contact.company);
    TextEditingController positionCtrl =
        TextEditingController(text: widget.contact.position);

    print("SELECTED ${selectedContact.name}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit contact"),
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
                    contactRepo
                        .updateContact(
                          Contact(
                            id: widget.contact.id,
                            name: name,
                            position: position,
                            company: company,
                            phone: phone,
                          ),
                        )
                        .then((_) => Navigator.pop(context));

                    // contactRepo
                    //     .addNewContact(
                    //       Contact(
                    //         name: name,
                    //         position: position,
                    //         company: company,
                    //         phone: phone,
                    //       ),
                    //     )
                    //     .then((_) => Navigator.pop(context));
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
                child: const Text("Update"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/contact.dart';
import 'package:my_flutter_app/repository/contacts.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    final contactRepo = ContactRepository();
    // final results =   contactRepo.getAllContacts();
    // print("RESULT $results");

    Widget card(Contact contact) {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blueGrey[200],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: 100,
              child: const Image(
                image: NetworkImage("https://picsum.photos/200/300"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.account_circle, size: 30),
                    Text(
                      contact.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work, size: 30),
                    Text(
                      contact.position,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.factory, size: 30),
                    Text(
                      contact.company,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.phone, size: 30),
                    Text(
                      contact.phone,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    print("I WANT TO EDIT THIS ${contact.id}");

                    // Add this contact to Provider
                    Navigator.pushNamed(context, '/edit', arguments: contact)
                        .then((_) => setState(() {}));
                  },
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                    onPressed: () {
                      print("I WANT TO DELETE THIS ${contact.id}");
                      if (contact.id != null) {
                        contactRepo
                            .deleteContact(contact.id!)
                            .then((_) => setState(() {}));
                      }
                    },
                    icon: Icon(Icons.delete)),
              ],
            )
          ],
        ),
      );
    }

    final List names = ["Remi", "Farhan", "Don", "Ching", "Siti"];
    final List<Contact> contacts = [
      Contact(
        name: "Farhan",
        position: "SWE",
        company: "Tech",
        phone: "02333433434",
      ),
      Contact(
        name: "Ajim",
        position: "SWE",
        company: "Tech",
        phone: "02333433434",
      )
    ];

    // print("${contacts[0].email?.toLowerCase()}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
      ),
      backgroundColor: Colors.purple[300],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<Contact>>(
              future: contactRepo.getAllContacts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.data!
                        .map((Contact contact) => card(contact))
                        .toList(),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              }),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add").then((_) {
            print("I'M BACK");
            contactRepo.getAllContacts().then((_) => setState(() {}));
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

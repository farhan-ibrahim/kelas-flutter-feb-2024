import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_app/model/contact.dart';

class ContactRepository {
  // Connect with firestore
  final db = FirebaseFirestore.instance;

  // Find the collection

  // Add new contact to Firestore
  Future<void> addNewContact(Contact data) async {
    final contacts = db.collection("contacts");

    await contacts.add(data.toMap());
  }

  Future<List<Contact>> getAllContacts() async {
    final contacts = db.collection("contacts");

    print("GET CONTACT");

    // print(response.docs.length);

    // snapshot.docs = List of documents
    final QuerySnapshot<Map<String, dynamic>> response = await contacts.get();

    final List<Contact> results = response.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
            Contact.fromSnapshot(doc))
        .toList();

    // print("RESULT ${results[2].name}");

    return results;
  }

  // Delete contact
  Future<void> deleteContact(String id) async {
    final contacts = db.collection("contacts");

    await contacts.doc(id).delete();
  }

  /// Update contact
  Future<void> updateContact(Contact contact) async {
    final contacts = db.collection("contacts");

    print("ID ${contact.id}");

    await contacts.doc(contact.id).update(contact.toMap());
  }
}

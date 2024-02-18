import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_app/model/contact.dart';

class ContactRepository {
  // Connect with firestore
  final db = FirebaseFirestore.instance;

  // Find the collection

  addNewContact(Contact data) async {
    final contacts = db.collection("contacts");

    await contacts.add(data.toMap());
  }
}

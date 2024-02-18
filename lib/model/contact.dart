import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  String? id;
  String name;
  String position;
  String company;
  String phone;
  String? email;

  // Constructor
  Contact({
    required this.name,
    required this.position,
    required this.company,
    required this.phone,
    this.email,
    this.id,
  });

  // Method
  // convert Contact object to Map<String, dynamic>
  toMap() {
    return {
      "name": name,
      "position": position,
      "company": company,
      "phone": phone,
      // Email is optional
      // if (email != null) "email": email,
    };
  }

  factory Contact.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    // print("ID ${doc.id}");
    return Contact(
      id: doc.id,
      name: doc.data()["name"],
      position: doc.data()["position"],
      company: doc.data()["company"],
      phone: doc.data()["phone"],
    );
  }
}

final contact1 = Contact(company: "A", name: "B", position: "C", phone: "D");
// Map<String, dynamic> contactMap = contact1.toMap();

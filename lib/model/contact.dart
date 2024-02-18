class Contact {
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
      if (email != null) "email": email,
    };
  }
}

// final contact1 = Contact(company: "A", name: "B", position: "C", phone: "D");
// Map<String, dynamic> contactMap = contact1.toMap();

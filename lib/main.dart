import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/firebase_options.dart';
import 'package:my_flutter_app/model/contact.dart';
import 'package:my_flutter_app/pages/add_contact.dart';
import 'package:my_flutter_app/pages/edit_contact.dart';
import 'package:my_flutter_app/pages/home.dart';
import 'pages/form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(routes: {
      // path => widget/page
      '/': (context) => const ContactsList(),
      '/form': (context) => const MyForm(),
      '/add': (context) => const AddContact(),
      '/edit': (context) => EditContact(
          contact: ModalRoute.of(context)!.settings.arguments as Contact),
    }),
  );
}

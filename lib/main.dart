import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/firebase_options.dart';
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
      '/': (context) => const MyList(),
      '/form': (context) => const MyForm(),
    }),
  );
}

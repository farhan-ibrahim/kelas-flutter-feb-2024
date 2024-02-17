import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/home.dart';
import 'pages/form.dart';

void main() {
  runApp(
    MaterialApp(routes: {
      // path => widget/page
      '/': (context) => const MyList(),
      '/form': (context) => const MyForm(),
    }),
  );
}

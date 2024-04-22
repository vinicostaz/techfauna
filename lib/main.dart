import 'package:flutter/material.dart';
import 'package:techfauna/pages/login/cadastro.dart';
import 'package:techfauna/pages/login/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

import 'package:entrenalife/screens/LoginScreen.dart';
import 'package:entrenalife/screens/barra.dart';
import 'package:entrenalife/screens/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EntrenaLife',
      initialRoute: "rutalogin",
      routes: {
        "rutalogin": (_) => LoginScreen(),
        "principal": (_) => principal(),
        "barra": (_) => barra()
      },
    );
  }
}

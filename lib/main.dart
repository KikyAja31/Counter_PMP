import 'package:flutter/material.dart';
import 'package:counterapp/Counter_mod.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const CounterMod(),
      },
    );
  }
}

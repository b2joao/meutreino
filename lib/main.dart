import 'package:flutter/material.dart';
import 'package:meutreino/telas/telaExercicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
      ),
      home: TelaExercicio(),
    );
  }
}

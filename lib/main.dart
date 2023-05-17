import 'package:esto_es_una_prueba/presentation/screen/home/pruba_screen.dart';
import 'package:esto_es_una_prueba/presentation/screen/sqli1/primer_sqlite_screen.dart';
import 'package:esto_es_una_prueba/presentation/screen/sqlite2/segundo_sqlite_screen.dart';
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
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const PruebaScreen(),
      routes: {
        "/SQLite": (context) => const PrimerSqliteScreen(),
        "/2SQLite": (context) => const SegundoSqliteScreen(),
      },
    );
  }
}

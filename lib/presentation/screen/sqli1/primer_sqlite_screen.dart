import 'package:flutter/material.dart';

class PrimerSqliteScreen extends StatelessWidget {
  static const String name = "Primera_SQLite_Screen";
  const PrimerSqliteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("primer ensayo de sqlite"),
      ),
      body: const Placeholder(),
    );
  }
}

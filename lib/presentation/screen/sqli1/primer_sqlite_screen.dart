import 'package:flutter/material.dart';

class PrimerSqliteScreen extends StatefulWidget {
  static const String name = "Primer_SQLite_Screen";
  const PrimerSqliteScreen({super.key});

  @override
  State<PrimerSqliteScreen> createState() => _PrimerSqliteScreenState();
}

class _PrimerSqliteScreenState extends State<PrimerSqliteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("primera pantalla usando sqlite"),
      ),
      body: const Placeholder(),
    );
  }
}

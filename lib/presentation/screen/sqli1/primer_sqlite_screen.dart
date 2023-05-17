import 'package:flutter/material.dart';

class PrimerSqliteScreen extends StatefulWidget {
  static const String name = "Primera_SQLite_Screen";
  const PrimerSqliteScreen({super.key});

  @override
  State<PrimerSqliteScreen> createState() => _PrimerSqliteScreenState();
}

class _PrimerSqliteScreenState extends State<PrimerSqliteScreen> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("primer ensayo de sqlite"),
      ),
      body: const Center(
        child: Text("shop"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: "shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "my cart")
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),
    );
  }
}

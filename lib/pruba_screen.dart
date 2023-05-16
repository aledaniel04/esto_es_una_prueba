import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("prueba"), centerTitle: true),
      body: const Center(child: Text("hola mundo que hay de nuevo")),
    );
  }
}

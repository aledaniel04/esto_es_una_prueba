import 'package:esto_es_una_prueba/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PruebaScreen extends StatelessWidget {
  static const String name = "Prueba_Screen";

  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("prueba"), centerTitle: true),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: ((context, index) {
          final menuItem = appMenuItems[index];
          return _CustomListTile(menuItem: menuItem);
        }));
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      leading: Icon(
        menuItem.icon,
        color: Colors.indigo,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.indigo,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        //Navigator.pushNamed(context, menuItem.link); forma tradicional

        //context.pushNamed(PrimerSqliteScreen.name); con nombre

        context.push(menuItem.link);
      },
    );
  }
}

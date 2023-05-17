import 'package:esto_es_una_prueba/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("prueba"), centerTitle: true),
        body: const _homeView());
  }
}

class _homeView extends StatelessWidget {
  const _homeView();

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
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blueGrey,
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
      onTap: () {},
    );
  }
}

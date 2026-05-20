

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget{
  static const String name = 'home_screen';
 const HomeScreen ({super.key});

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Fltter + material 3'),
    ),
    body: _HomeView(),
  );
 }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder:(context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(
          menuItems: menuItem
          );
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {

  final MenuItems menuItems;
  const _CustomListTile({ required this.menuItems });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItems.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subtitle),
      onTap: (){
        // FIXME: Cambiar pantalla
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => ButtonsScreen(),
        //   )
        // );
        context.push(menuItems.url);
      },
    );
  }
}
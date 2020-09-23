import 'package:flutter/material.dart';
import 'package:shared_app/widgets/drawer_style.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Colors secundario'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nomber usuario'),
          Divider(),
        ],
      ),
    );
  }

}
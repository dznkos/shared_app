import 'package:flutter/material.dart';
import 'package:shared_app/widgets/drawer_style.dart';

class SettingsPage extends StatelessWidget {

  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Text('Ajustes Page'),
      )
    );
  }
}
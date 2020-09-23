import 'package:flutter/material.dart';
import 'package:shared_app/pages/home_page.dart';
import 'package:shared_app/pages/settings_page.dart';

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Hola Bienvenido'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.home, color: Colors.blue),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue),
            title: Text('PartyMode'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon( Icons.queue_music, color: Colors.blue),
            title: Text('Music'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon( Icons.people, color: Colors.blue),
            title: Text('People'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue),
            title: Text('Settings'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),

        ],
      ),
    );
  }
}
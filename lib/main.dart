import 'package:flutter/material.dart';
import 'package:shared_app/pages/home_page.dart';
import 'package:shared_app/pages/settings_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferences',
      initialRoute: HomePage.routeName,
      routes : {
        HomePage.routeName : (BuildContext context ) => HomePage(),
        SettingsPage.routeName : (BuildContext context ) => SettingsPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
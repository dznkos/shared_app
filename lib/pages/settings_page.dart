import 'package:flutter/material.dart';
import 'package:shared_app/widgets/drawer_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _estadoUsuario = false;
  int _genero = 1;
  String _nombre = 'Pedro';

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    
    cargarShared();

    _textController = new TextEditingController( text: _nombre);
  }

  cargarShared() async{
        SharedPreferences shared = await SharedPreferences.getInstance();
    _genero = shared.getInt('genero');
    setState(() {});
  }

  _setSelectRadio (int valor ) async{

    SharedPreferences shared = await SharedPreferences.getInstance();

    shared.setInt('genero', valor);
    _genero = valor;
    setState(() {      
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text('Settings', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          ),
          SwitchListTile(
            value: _estadoUsuario ,
            title: Text('Modo Invisible'), 
            onChanged: (value) {
              setState(() {
                _estadoUsuario = value;  
              });
            }
          ),
          RadioListTile(
            value: 1, 
            title: Text('Masculino'),
            groupValue: _genero, 
            onChanged: _setSelectRadio,
          ),
          RadioListTile(
            value: 2, 
            title: Text('Femenino'),
            groupValue: _genero, 
            onChanged: _setSelectRadio,  
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                hintText: 'Ingrese nombres'
              ),
            )
          ),
          
        ],
      )      
    );
  }
}
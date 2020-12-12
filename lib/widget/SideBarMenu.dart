import 'package:flutter/material.dart';
import 'package:profile_template/page/informacion.dart';

class SideBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     scale: 1.0,
              //     image: AssetImage('assets/image/logo.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Información'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Informacion()))
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Horario de visitas'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Días de pago'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

// class Rutas extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//     );
//   }
// }

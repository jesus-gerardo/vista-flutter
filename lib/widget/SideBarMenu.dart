import 'package:flutter/material.dart';
import 'package:profile_template/page/informacion.dart';
import 'package:profile_template/page/page_2.dart';
import 'package:profile_template/page/page_3.dart';
import 'package:profile_template/page/page_4.dart';

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
              //     image: AssetImage('https://picsum.photos/200/300')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('pagina 1'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Informacion()))
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('pagina 2'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page_2()))
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('pagina 3'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page3()))
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Pagina 4'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page4()))
            },
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

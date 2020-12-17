import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 3'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Card(
                          child: ListTile(
                        leading: Icon(Icons.person),
                        title: TextFormField(
                          decoration: InputDecoration(labelText: "Nombre"),
                        ),
                      ))),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Card(
                          child: ListTile(
                        leading: Icon(Icons.phone),
                        title: TextFormField(
                          decoration: InputDecoration(labelText: "Telefono"),
                        ),
                      ))),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Card(
                          child: ListTile(
                        leading: Icon(Icons.email),
                        title: TextFormField(
                          decoration:
                              InputDecoration(labelText: "Correo electronico"),
                        ),
                      ))),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Card(
                          child: ListTile(
                        leading: Icon(Icons.attach_email),
                        title: TextFormField(
                          decoration: InputDecoration(labelText: "asunto"),
                        ),
                      ))),
                  RaisedButton(
                    onPressed: () => {
                      // Scaffold.of(context).showSnackBar(
                      //     SnackBar(content: Text('Datos guardados')))
                    },
                    child: Text('Guardar'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

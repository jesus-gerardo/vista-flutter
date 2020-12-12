import 'package:flutter/material.dart';
import 'package:profile_template/widget/SideBarMenu.dart';
import 'package:profile_template/widget/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prototipo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(
        title: Text('Prototipo diseño'),
      ),
      body: ListView(
        children: <Widget>[
          Text('Prueba de parametro con para portafolio de aplicaciones'),
        ],
      ),
    );
  }
}

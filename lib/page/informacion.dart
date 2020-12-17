import 'package:flutter/material.dart';
import 'package:profile_template/widget/card.dart';

class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: ListView(
        children: <Widget>[
          card(),
          card(),
          card(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:profile_template/widget/card.dart';

class Page_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 200.0,
            // color: Colors.red,
            child: card(),
          ),
          Container(
            width: 200,
            // color: Colors.red,
            child: card(),
          ),
          Container(
            width: 200,
            // color: Colors.red,
            child: card(),
          ),
          Container(
            width: 200.0,
            // color: Colors.red,
            child: card(),
          ),
          Container(
            width: 200.0,
            // color: Colors.red,
            child: card(),
          ),
        ],
      ),
    );
  }
}

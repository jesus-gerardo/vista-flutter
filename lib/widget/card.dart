import 'package:flutter/material.dart';

Card card() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Image(
          image: NetworkImage('https://picsum.photos/200/300'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non dui a ligula fringilla bibendum. Cras a eleifend tortor.'),
        )
      ],
    ),
  );
}

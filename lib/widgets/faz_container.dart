import 'package:flutter/material.dart';

Widget fazContainer({String texto, String foto}) {
  return Stack(
    children: <Widget>[
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: EdgeInsets.only(bottom: 6.0),
            width: 360,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(foto), //Insere a foto passada;
                fit: BoxFit.cover,
              ),
            ),
            child: Text('dd'), //AguaContainer(),//ARROW BUTTON;
          ),
        ),
      ),
      Positioned(
        left: 38,
        top: 350,
        child: Text(
          texto, //TEXTO passado como param.
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0),
        ),
      ),
    ],
  );
}

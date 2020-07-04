import 'package:flutter/material.dart';

class ComprasMyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compras',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Compras'),
        ),
        body: Center(
          child: Text('Dboa'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListaPedidos extends StatefulWidget {
  //homelist
  static List<Widget> items = List<Widget>();
  @override
  _ListaPedidosState createState() => _ListaPedidosState();
}

class _ListaPedidosState extends State<ListaPedidos> {
  @override
  Widget build(BuildContext context) {
    List<Widget> values = List<Widget>();
    if (ListaPedidos.items.length == 0) {
      values.add(
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Faça sua lista personalizada de produtos'),
          trailing: Icon(Icons.more_vert),
        ),
      );
    }
    return ListView(
        shrinkWrap: true,
        children:
            (ListaPedidos.items.length == 0) ? values : ListaPedidos.items);
  }
}

import 'package:app_o_baratao/layout/layout_app.dart';
import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  static String tag = 'listPage';
  @override
  Widget build(BuildContext context) {
    return Layout(body: ListPage());
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext mainContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome do Produto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: TextFormField(
                scrollPadding: EdgeInsets.all(30),
                decoration: InputDecoration(hintText: '    Pesquisar'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 190,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: GestureDetector(
                      child: Icon(Icons.adjust, color: Colors.green),
                      onTap: () {
                        print('Marcar como adquirido');
                      },
                    ),
                    title: Text('Nome do Item'),
                    subtitle: Text('4 X R\$ 1,50 = R\$6,00'),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {
                        print('Deletar');
                      },
                    ),
                    onLongPress: () {
                      print('Editar Produto');
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepOrange,
              height: 65,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width /
                        2, // PEGOU O PADDING E DIVIDIU-SE POR DOIS P CADA CONTAINER
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total de Items: 1'),
                        Text('Já adquirido: 0')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo,
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Total: R\$ 15,00',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

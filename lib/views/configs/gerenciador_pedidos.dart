import 'package:app_o_baratao/layout/layout_app.dart';
import 'package:flutter/material.dart';

class SeusPedidosPage extends StatelessWidget {
  static String tag = 'listPage';
  @override
  Widget build(BuildContext context) {
    return Layout(body: SeusPedidos());
  }
}

class SeusPedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: new Row(
            children: <Widget>[
              new SizedBox(
                width: 20.0,
                height: 30.0,
                child: new FlatButton(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text('Seus Pedidos', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Center(
          child: Text('Você ainda não possui nenhum pedido'),
        ),
      ),
    );
  }
}

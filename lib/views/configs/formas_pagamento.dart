import 'package:app_o_baratao/layout/layout_color.dart';
import 'package:flutter/material.dart';

class FormasPagamento extends StatefulWidget {
  @override
  _FormasPagamentoState createState() => _FormasPagamentoState();
}

class _FormasPagamentoState extends State<FormasPagamento> {
  int _counter = 0;

  void _incrementCounter() {
    setState() {
      _counter++;
    }
  }

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
                child: Text('Formas de Pagamento', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Center(
          // se não tiver uma forma de pagamento cadastrada
          child: Text('Clique no botão para adicionar uma forma de pagamento'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: LayoutColor.primaryColor,
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.control_point),
        ),
      ),
    );
  }
}

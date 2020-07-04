import 'package:flutter/material.dart';

class AlterarSenha extends StatelessWidget {
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
                child: Text('Alterar Senha', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 2.0),
                  child: Text(
                    'Senha Atual: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                // box para adicionar a senha oculta
                // box para visualizar a senha oculta
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 15.0),
                  child: Text(
                    'Nova Senha: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                // box para digitar a nova senha oculta
                // box para vizualizar a senha oculta
              ],
            ),
            Row(
              children: <Widget>[
                Text('Esqueci a senha'),
                RaisedButton(
                  child: Text('Alterar Senha'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

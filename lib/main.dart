import 'package:app_o_baratao/views/configs/gerenciador_pedidos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'views/login/cadastro_page.dart';
import 'views/prateleira/compras_page.dart';
import 'views/home/home_page.dart';
import 'views/login/login_page.dart';
import 'views/configs/mais_page.dart';
import 'views/login/reset_password_page.dart';
import 'blocs/bloc.dart';
import 'carrinho_compras/gerador_lista_carrinho.dart';
import 'carrinho_compras/layout_carrinho.dart';
import 'layout/layout_color.dart';
import 'layout/layout_lista.dart';
import 'widgets/lista_compras_widget.dart';

void main() => runApp(AppMarket());

class AppMarket extends StatelessWidget {
  Bloc bloc = Bloc();

  final routes = <String, WidgetBuilder>{
    ListaCompras.tag: (BuildContext context) => ListaCompras(),
    SeusPedidosPage.tag: (BuildContext context) => SeusPedidosPage(),
    Lista.tag: (BuildContext context) => Lista(),
    CadastroPage.tag: (BuildContext context) => CadastroPage(),
    LoginPage.tag: (BuildContext context) => LoginPage(),
    ComprasPage.tag: (BuildContext context) => ComprasPage(),
    ResetPasswordPage.tag: (BuildContext context) => ResetPasswordPage(),
    LayoutCarrinho.tag: (BuildContext context) => LayoutCarrinho(),
    GeradorListaCarrinho.tag: (BuildContext context) => GeradorListaCarrinho(),
    HomePage.tag: (BuildContext context) => HomePage(),
    MaisPage.tag: (BuildContext context) => MaisPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: LayoutColor.secondaryColor,
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}

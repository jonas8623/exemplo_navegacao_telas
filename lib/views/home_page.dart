
import 'dart:async';

import 'package:exemplo_navegacao/app/app_routes.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _textDescription(String? message) {
    return Center(
      child: Text(
        message ?? 'Sem dados',
        style: TextStyle(
          fontSize: 22.5,
          color: Colors.black
        ),
      ),
    );
  }

  _button1(BuildContext context ) {
    return TextButton.icon(
        onPressed: () {
          _navigatorScreen1(context);
          print('Clicou na tela 1');
        },
        icon: const  Icon(Icons.add),
        label: _textDescription('Tela 1')
    );
  }

  _button2(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _navigatorScreen2(context);
          print('Clicou na tela 2');
        },
        icon: const Icon(Icons.add),
        label: _textDescription('Tela 2')
    );
  }
  
  _buttonAbout(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _navigatorAbout(context);
          print('Clicou na tela Sobre ');
        },
        icon: const Icon(Icons.add),
        label: _textDescription('About')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: _textDescription('Navigation between screens'),),
      body: Column(
        children: [
          _textDescription('Tela Principal'),
          _button1(context),
          _button2(context),
          _buttonAbout(context)
        ],
      ),
    );
  }

  // Enviando para a primeira tela
  _navigatorScreen1(BuildContext context) {
    Timer(const Duration(), () => Navigator.pushNamed(context, AppRoutes.APP_ROUTE_SCREEN_1, arguments: 'test'));
  }

  // Enviando para a segunda tela
  _navigatorScreen2(BuildContext context) {
    Timer(const Duration(), () => Navigator.pushNamed(context, AppRoutes.APP_ROUTE_SCREEN_2));
  }

  // Enviando para a tela sobre
  _navigatorAbout(BuildContext context) {
    Timer(const Duration(), () => Navigator.pushNamed(context, AppRoutes.APP_ROUTE_ABOUT));
  }
}

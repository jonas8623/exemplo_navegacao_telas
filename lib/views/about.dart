

import 'package:exemplo_navegacao/app/app.dart';
import 'package:exemplo_navegacao/app/app_routes.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação -> tela Sobre ',
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: About(),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}


class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {

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

  _button(String message, BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _navigator(context);
          print('Clicou em voltar');
        },
        icon: Icon(Icons.arrow_back),
        label: _textDescription(message)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar( title: _textDescription('Sobre'),),
      body: Column(
        children: [
          _textDescription('Está na tela sobre'),
          _button('Voltar', context)
        ],
      ),
    );
  }

  _navigator(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.APP_ROUTE_HOME);
  }

}


import 'package:exemplo_navegacao/app/app.dart';
import 'package:exemplo_navegacao/app/app_routes.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação -> Tela 2',
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: Screen2View(),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}


class Screen2View extends StatefulWidget {

  @override
  _Screen2ViewState createState() => _Screen2ViewState();
}

class _Screen2ViewState extends State<Screen2View> {

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
        icon: const Icon(Icons.arrow_back),
        label: _textDescription(message)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar( title: _textDescription('Tela 2'),),
      body: Column(
        children: [
          _textDescription('Está na tela 2'),
          _button('Voltar', context)
        ],
      ),
    );
  }

  // Navegação para voltar para a tela principal
  _navigator(BuildContext context) {
     Navigator.pushReplacementNamed(context, AppRoutes.APP_ROUTE_HOME);
  }

}

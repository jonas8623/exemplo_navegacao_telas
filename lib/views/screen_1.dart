
import 'package:exemplo_navegacao/app/app.dart';
import 'package:exemplo_navegacao/app/app_routes.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String name = ModalRoute.of(context)!.settings.arguments as String;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação -> Tela 1',
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: Screen1View(name),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}


class Screen1View extends StatefulWidget {

  final String name;
  
  Screen1View(this.name);

  @override
  _Screen1ViewState createState() => _Screen1ViewState();
}

class _Screen1ViewState extends State<Screen1View> {

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
      appBar: AppBar( title: _textDescription('Tela 1'),),
      body: Column(
        children: [
          _textDescription('Está na tela 1'),
          _button('Voltar', context),
          Text('Nome enviado ${widget.name}')
        ],
      ),
    );
  }

  // Navegação para voltar para a tela anterior
  _navigator(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.APP_ROUTE_HOME);
  }
  
}

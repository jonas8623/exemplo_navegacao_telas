import 'package:exemplo_navegacao/app/app.dart';
import 'package:exemplo_navegacao/views/views.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação entre telas',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: HomePage(),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}

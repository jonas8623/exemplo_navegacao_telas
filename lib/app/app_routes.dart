
import 'package:exemplo_navegacao/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const String APP_ROUTE_HOME = "/home";
  static const String APP_ROUTE_SCREEN_1 = "/screen_1";
  static const String APP_ROUTE_SCREEN_2 = "/screen_2";
  static const String APP_ROUTE_ABOUT = "/about";

  Route? getRoutes(RouteSettings routeSettings) {

    switch(routeSettings.name) {

      // Caso ele estiver na página de HomePage
      case APP_ROUTE_HOME: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => HomePage()
        );
      }

      // Caso ele estiver na página de Screen1
      case APP_ROUTE_SCREEN_1: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => Screen1()
        );
      }

      // Caso ele estiver na página de Screen_2
      case APP_ROUTE_SCREEN_2: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => Screen2()
        );
      }

      // Caso ele estiver na página de About
      case APP_ROUTE_ABOUT: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => About()
        );
      }

      // Por padrão ele vai conter a HomePage
      default: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => HomePage(),
            fullscreenDialog: true
        );
      }

    }
  }

}
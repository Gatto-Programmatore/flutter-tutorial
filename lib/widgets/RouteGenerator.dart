import 'package:corso_flutter/widgets/ErrorePagina.dart';
import 'package:corso_flutter/widgets/PrimaPagina.dart';
import 'package:corso_flutter/widgets/SecondaPagina.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/prima':
        if (args is String) {
          return MaterialPageRoute(
            builder: (context) => PrimaPagina(data: args),
          );
        } else {
          return MaterialPageRoute(builder: (context) => ErrorePagina());
        }
      case '/seconda':
        return MaterialPageRoute(builder: (context) => SecondaPagina());
      default:
        return MaterialPageRoute(builder: (context) => ErrorePagina());
    }
  }
}

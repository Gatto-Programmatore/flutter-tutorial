import 'package:corso_flutter/widgets/PrimaPagina.dart';
import 'package:corso_flutter/widgets/RouteGenerator.dart';
import 'package:corso_flutter/widgets/SecondaPagina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimaPagina(data: 'aaaaaaaa'),

      // routing statico (dati fissi)
      routes: {
        '/prima': (context) => PrimaPagina(data: 'ccccc'),
        '/seconda': (context) => SecondaPagina(),
      },

      //routing dinamico (datti cambiano ad ogni cambio)
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// per chiamare una pagina senza usare il routing
/*
ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute<void>(
builder: (context) => PrimaPagina(),
),
);
},
child: Text('cambia pagina'),
),
*/

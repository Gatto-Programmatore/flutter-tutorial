import 'package:corso_flutter/widgets/CardArancione.dart';
import 'package:corso_flutter/widgets/CardBlu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var lista = [3, 6, 54, 2, 3, 5, 8, 95, 2, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget personalizzati'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: lista.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          // la card cambia colore in base al numero
          // se il numero della lista è pari inserisce CardBlu
          // mentre
          // se il numero della lista è dispari inserisce CardArancione
          if (lista[index] % 2 == 0) {
            // uso del widget personalizzato CardVideo
            return CardVideo(numero: index);
          } else {
            // uso del widget personalizzato CardTesto
            return CardTesto(numero: index);
          }
        },
      ),
    );
  }
}

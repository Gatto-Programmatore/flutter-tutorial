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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Immagine caricata dalle risorse dell'app:",
              style: TextStyle(fontSize: 20),
            ),
            Image.asset('images/montagne.jpg', width: 500),
            Text("\n"),
            Text(
              "Immagine con colore blu sovvraposto:",
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(
              'images/montagne.jpg',
              width: 500,
              color: Colors.blue,
              colorBlendMode: BlendMode.exclusion,
            ),
          ],
        ),
      ),
    );
  }
}

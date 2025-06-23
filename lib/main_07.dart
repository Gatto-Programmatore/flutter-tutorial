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
      // container funge da corpo cioè body della pagina ma potevamo usare qualsiasi widget
      body: Container(
        padding: EdgeInsets.all(50),
        // bianco - spazio trai bordi dello schermo (body) ed il bordo del contenitore interno
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          // arancione - spazio tra l'emento centrale (ciao) ed il suo contenitore (bordo interno)
          color: Colors.orange,
          // blu - bordo del contenitore
          border: Border.all(width: 30, color: Colors.indigo),
        ),
        // nero - elemento centrale / più interno (ciao)
        child: Text('Ciao', style: TextStyle(fontSize: 50)),
      ),
    );
  }
}

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
      home: const MyHomePage(title: 'Box - Scatole'),
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
      body: Column(
        children: [
          Container(height: 50, color: Colors.orange),
          /* Serve principalmente per uno spazio fisso senza contenuto,
          altrimenti usiamo altri widget come "container" o altro */
          SizedBox(height: 100, width: double.infinity),
          Container(height: 50, color: Colors.orange),
          Expanded(
            // si adatta allo spazio disponibile
            child: Container(
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: Text("La mia fine dipende dal widget sotto"),
            ),
          ),
          Container(height: 50, color: Colors.orange),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100, maxHeight: 300),
            // anche se imposto altezza 400 del figlio, massimo 300 del padre
            child: Container(color: Colors.blue, height: 400),
          ),
          Container(height: 50, color: Colors.orange),
        ],
      ),
    );
  }
}

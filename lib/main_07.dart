import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Container, Padding, Margin e Border'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // container funge da corpo cioè body della pagina ma potevamo usare qualsiasi widget
      body: Container(
        // arancione - spazio tra l'emento centrale (ciao) ed il suo contenitore
        padding: EdgeInsets.all(50),
        // bianco - spazio trai bordi dello schermo (body) ed il bordo del contenitore
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
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

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // separatore visivo
          Container(
            color: Colors.green,
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Text('Opacity:', style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            child: ListView(
              children: [
                Opacity(
                  opacity: 0.5, //
                  child: Container(height: 50, color: Colors.red),
                ),
              ],
            ),
          ),
          // separatore visivo
          Container(
            color: Colors.green,
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Text('Trasform.scale:', style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            height: 100,
            child: Transform.scale(
              scaleY: 0.5, // ingrandisce il rettangolo blu in verticale di 0,5 volta  (riempimento)
              // se mettiamo 1 o più andra a coprire gli altri elementi (ingrandendosi)
              child: Container(height: 50, color: Colors.blue),
            ),
          ),
          // separatore visivo
          Container(
            color: Colors.green,
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Text('Trasform.translate:', style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            height: 50,
            child: Transform.translate(
              offset: Offset(70, 20), // sposta il rettangolo giallo a destra e in basso (riempimento)
              child: Container(color: Colors.yellow),
            ),
          ),
          // separatore visivo
          Container(
            color: Colors.green,
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Text('Clip:', style: TextStyle(fontSize: 20),),
          ),
      SizedBox(
        height: 50,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(90), // arrotonda gli angoli del rettangolo
            child: Container(height: 100, color: Colors.orange),
          )
      ),
          // separatore visivo
          Container(
            color: Colors.green,
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Text('DecoratedBox:', style: TextStyle(fontSize: 20),),
          ),
      SizedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              gradient: LinearGradient(colors: [Colors.orange, Colors.red])
            ),
            child: Container(height: 50),
          ),
      ),
          SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle,
                  backgroundBlendMode: BlendMode.difference,
                  gradient: LinearGradient(colors: [Colors.orange, Colors.red])
              ),
              child: Container(height: 50),
            ),
          ),
        ],
      ),
    );
  }
}

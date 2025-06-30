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
      home: const MyHomePage(title: 'Card'),
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
      body: SizedBox(
        height: 370,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.all(20),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Image.asset('images/montagne.jpg'),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.jpg'),
                ),
                title: Text('Luca Rossi'),
                subtitle: Text('Ciao sono nuovo'),
                trailing: Icon(Icons.favorite),
              )
            ],
          ),
        ),
      ),
    );
  }
}

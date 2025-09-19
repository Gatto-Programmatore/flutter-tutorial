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
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless & Stateful'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Fai doppio click sull'immagine per gestire i preferiti",
                style: TextStyle(fontSize: 20),
              ),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset('images/montagne.jpg', fit: BoxFit.fill),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: isFavourite
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_border_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

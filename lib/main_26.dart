import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _top = 10;
  double _left = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("GestureDetector ed Inkwell"),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  print("click");
                },
                onDoubleTap: () {
                  print("doppio click");
                },
                onLongPress: () {
                  print("lungo click");
                },
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    _top += details.delta.dy;
                    _left += details.delta.dx;
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              // Inkwell dovrebbe mostrare il cerchio solo intorno al punto
              // dove si clicca ma al momento evidenzia tutto il contenitore.
              child: InkWell(
                onTap: () {
                  print("click");
                },
                onDoubleTap: () {
                  print("doppio click");
                },
                onLongPress: () {
                  print("lungo click");
                },
                splashColor: Colors.redAccent,
                child: SizedBox(
                  width: double.infinity,
                  height: 400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

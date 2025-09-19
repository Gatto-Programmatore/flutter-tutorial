import 'package:flutter/foundation.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var grandezzaSchermo = MediaQuery.of(context).size.width;
    print("grandezza schermo: +$grandezzaSchermo");
    var tipologiaDispositivo = defaultTargetPlatform;
    print("dipositivo: +$tipologiaDispositivo");

    String dammiTipologiaDispositivo() {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          return "android";
        case TargetPlatform.fuchsia:
          return "fuchsia";
        case TargetPlatform.iOS:
          return "iOS";
        case TargetPlatform.linux:
          return "linux";
        case TargetPlatform.macOS:
          return "macOS";
        case TargetPlatform.windows:
          return "windows";
        default:
          return "piattaforma sconosciuta";
      }
    }

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout responsive & adaptive"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          // Layout responsive
          // cambia orientamento del dispositivo per vedere la differenza
          color: grandezzaSchermo < 600 ? Colors.blue : Colors.orange,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Responsive Layout",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                      Text("cambia orientamento per vedere il risultato"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Adaptive Layout",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dispositivo: ${dammiTipologiaDispositivo()} ",
                        style: TextStyle(fontSize: 20)),
                        if (tipologiaDispositivo == TargetPlatform.android)
                          Icon(Icons.android),
                        if (tipologiaDispositivo == TargetPlatform.windows)
                          Icon(Icons.window),
                      ],
                    ),
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text("cambia dispositivo per vedere il risultato"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

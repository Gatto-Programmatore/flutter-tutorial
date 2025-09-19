import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // lo stato viene creato
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int numero;

  // metodo che inizializza lo stato che è stato creato sopra
  @override
  void initState() {
    super.initState();
    numero = 6;
  }

  // metodo sovrascritto solo per vedere che si può modificare
  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    // richiama il build
  }

  // metodo sovrascritto solo per vedere che si può modificare
  // metodo che distrugge il layout / il widget e i suoi listener (se presenti)
  @override
  void dispose() {
    super.dispose();
  }

  // altri override di metdi che gestiscono gli altri stati

  // metodo che crea il layout con gli widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Statefull widget lifecycle - Ciclo di vita di un widget",
          ),
          backgroundColor: Colors.green,
        ),

        // FutureBuilder ci serve per dirgli che il layout non viene costruito
        // subito ma in futuro quando riceve i dati (dopo aver creato lo stato
        body: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$numero", style: TextStyle(fontSize: 75)),
                  ElevatedButton(
                    onPressed: () {
                      // setState fa un cambiamento interno quindi rifà la build
                      setState(() {
                        numero +=1;
                      });},
                      child: Text("incrementa numero")),
                ],
              ),
            );
          },
          future: null,
        ),
      ),
    );
  }
}

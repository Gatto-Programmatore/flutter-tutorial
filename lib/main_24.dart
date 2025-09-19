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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  // permette di scorrere orizzontalmente quando ci sono molte tab
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // indicatorSize: TabBarIndicatorSize.label, // evidenzia solo la scritta
                  // indicatorWeight: 10, // spessore della linea (meglio per ".label")
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent,
                    // possiamo aggiungere anche immagini come sfondo delle tab
                    /*
                image: ImageAsset(
                  'assets/images/sfondo_tab.png',
                  fit: ,
                ),
                */
                  ),
                  tabs: [
                    Tab(icon: Icon(Icons.directions_bike), text: 'Home'),
                    Tab(icon: Icon(Icons.directions_bike), text: 'Bici'),
                    Tab(icon: Icon(Icons.directions_car), text: 'Macchina'),
                    Tab(icon: Icon(Icons.directions_bus), text: 'Autobus'),
                    Tab(icon: Icon(Icons.directions_bus), text: 'Autobus'),
                    Tab(icon: Icon(Icons.directions_bus), text: 'Autobus'),
                    Tab(icon: Icon(Icons.directions_bus), text: 'Autobus'),
                    Tab(icon: Icon(Icons.directions_bus), text: 'Autobus'),
                  ],
                ),
              ],
            ),
          ),
          // bottom: è la barra del titolo, l'abbiamo tolta per avere le tab più in alto
          body: TabBarView(
            children: [
              // al posto delle icone andrebbero le pagine
              // (es PrimaPagina() e SecondaPagina() già create in precedenza)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Navigazione con le Tab',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_bus),
              Icon(Icons.directions_bus),
              Icon(Icons.directions_bus),
              Icon(Icons.directions_bus),
              Icon(Icons.directions_bus),
            ],
          ),
        ),
      ),
    );
  }
}

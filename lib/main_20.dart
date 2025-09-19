import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        // in teoria il codice sotto dovrebbe funzionare ma per qualche motivo non va

        // Per creare un tema si devono specificare molti colori
        // colorScheme: ColorScheme(brightness: , primary: , onPrimary: , secondary: , onSecondary: , error: , onError: , surface: , onSurface: )
        // ma è possibile usare il metodo fromSeed per semplificare
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),

        // lo swatch è un insieme di colori primari generati da 1 solo colore
        //primarySwatch: Colors.orange,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue),
        //ScolorSchemeSeed: Colors.pink,

        appBarTheme: AppBarTheme(
          //backgroundColor: Colors.blue
        ),

        scaffoldBackgroundColor: Colors.yellow,

        // decidiamo il tema per tutti i testi dentro l'app
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.abel().fontFamily,
            fontSize: 20,
            color: Colors.red,
          ),
        ),

      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Temi personalizzati'),
          backgroundColor: Colors.green,
        ),

        body: Center(
          child: Text(
            'Testo',
            style:
                // Sovrascrive il tema generale per quanto riguarda la grandezza del testo
                TextStyle(fontSize: 60),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

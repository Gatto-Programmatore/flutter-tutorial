
import 'package:corso_flutter/widgets/AnimazioneHeroPage.dart';
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
  final String _descrizione = "L'immagine viene trascinata da una pagina all'altra";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animazione Hero'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (context) =>
                        AnimazioneHeroPage(data: _descrizione)));
              },
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius:
              BorderRadius.circular(20)),
              clipBehavior: Clip.hardEdge,
              child: Column (
                children: [
                Hero(
                  tag: 'immagine_copertina',
                  child: Image.asset('images/montagne.jpg'),
                ),
                Text(
                  _descrizione,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Hero(
                tag: 'favourite_icon',
                child: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

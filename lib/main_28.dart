import 'dart:convert';

import 'package:corso_flutter/album_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// metodo che recupera i dati da internet
Future<List<Album>> fetchAlbums() async {
  List<Album> albums = [];
  var response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
  );
  var body = json.decode(response.body);
  for (int i = 0; i < body.length; i++) {
    albums.add(Album.fromJson(body[i]));
  }
  return albums;
}

// metodo che cancella un album dalla lista
// metodo non usato
Future<bool> deleteAlbum(int id) async {
  await http
      .delete(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'))
      .then((value) {
        return true;
      });

  return false;
  /* si poteva anche mettere la chiamata in una variabile e poi fare
  return response.statusCode == 200; */
}

// metodo che inserisce un album nella lista
// metodo non usato
Future<bool> inserisciAlbum(int id) async {
  await http
      .post(
        Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
        headers: {'token': 'abc123'},
        body: jsonEncode({'title': 'nuovo titolo'}),
      )
      .then((value) {
        return true;
      });

  return false;
  /* si poteva anche mettere la chiamata in una variabile e poi fare
  return response.statusCode == 200; */
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Album>> albums;

  @override
  void initState() {
    super.initState();

    // prendiamo qui i dati per non appesantire il caricamento dell'app
    albums = fetchAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chiamate HTTP"),
          backgroundColor: Colors.green,
        ),

        // FutureBuilder non costruisce nulla fino a che non ha i dati
        // (a differenza di "builder" normale che costruisce subito)
        body: FutureBuilder(
          future: albums, // si aspetta degli album
          builder: (context, snapshot) {
            // snapshot contiene lo stato del Future

            if (snapshot.hasData) {
              // se riceve dati mostra la lista degli album
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Album $index: ${snapshot.data![index].title}',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              // se non riceve dati mostra errore
              return Text("errore");
            }

            // mentre aspetta i dati mostra una rotellina di caricamento
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

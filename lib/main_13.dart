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
  var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView(
              padding: EdgeInsets.all(8),
              children: [
                for (var i in lista)
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      titleTextStyle: TextStyle(color: Colors.grey),
                      trailing: Icon(Icons.drag_handle),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: Image.asset('images/avatar.jpg').image,
                      ),
                      title: Text("Luca Rossi"),
                      subtitle: Text("Ciao sono nuovo"),
                    ),
                  ),
              ],
            ),
          ),
          Padding(padding: EdgeInsetsGeometry.all(20)),
          SizedBox(
            height: 400,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: [
                for (var i in lista)
                  GridTile(
                    footer: Container(
                      padding: EdgeInsets.all(4),
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                    child: Image.asset('images/avatar.jpg'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
// Alternativa per creare a mano effetto simile
Container(
  margin: EdgeInsets.all(8),
  height: 100,
  color: Colors.grey,
  child: Row(
    children: [
      Image.asset('images/avatar.jpg', width: 100,),
      Column(
        children: [
          Text('Luca Rossi'),
          Text('Ciao, sono nuovo')
        ],
      ),
    ],
  ),
),
*/

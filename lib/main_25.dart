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
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar, Chip, Dialog, CircularProgressIndicator"),
          backgroundColor: Colors.green,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text("SnackBar:", style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Sono una SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    _messengerKey.currentState?.showSnackBar(snackBar);
                  },
                  child: Text("Mostra SnackBar"),
                ),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text("Chip:", style: TextStyle(fontSize: 20)),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("LR"),
                  ),
                  label: Text("Luca Rossi"),
                ),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text(
                  "Rotellina di caricamento:",
                  style: TextStyle(fontSize: 20),
                ),
                CircularProgressIndicator(),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text("SimpleDialog:", style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("Scelta tra più opzioni"),
                          children: [
                            SimpleDialogOption(
                              onPressed: () {},
                              child: Text("Opzione 1"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {},
                              child: Text("Opzione 2"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Mostra SimpleDialog"),
                ),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text("AlertDialog:", style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Sei sicuro?"),
                          content: Text("L'operazione non è reversibile"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("Si")),
                            TextButton(onPressed: () {}, child: Text("No")),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Mostra AlertDialog"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

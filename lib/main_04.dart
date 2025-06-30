import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: const MyHomePage(title: 'Bottoni e icone'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.offline_bolt_sharp),
        leadingWidth: 100,
        actions: [
          Icon(Icons.abc_outlined),
          IconButton(onPressed: () => print('ciao'), icon: Icon(Icons.print)),
        ],
        foregroundColor: Colors.red,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.yellow),
        elevation: 20,
        shadowColor: Colors.blue,
        toolbarHeight: 50,
        toolbarOpacity: 0.6,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text('(premi + in basso a destra per incrementare)'),
            Text("\n\n"),
            TextButton(onPressed: () {}, child: Text("TextButton")),
            ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
            OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_time_filled),
              label: Text("TextButton"),
            ),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

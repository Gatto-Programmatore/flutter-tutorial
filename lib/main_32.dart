import 'package:corso_flutter/providers/contatore_numeri.dart';
import 'package:corso_flutter/widgets/AltraPagina.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // da questo punto in giù (widget figli) useremo i provider per gestire lo
    // stato di alcune variabili
    MultiProvider(
      // specifichiamo quali provider usiamo (1 o più).
      // Potremo usare anche "Provider" invece di "MultiProvider" (1 invece di lista).
      providers: [
        // il "ChangeNotifierProvider" manda le notifiche dei cambiamenti
        ChangeNotifierProvider(
          // nel nostro caso usiamo Counter (creato da noi in "contatore_numeri.dart")
          create: (_) => Counter(),
        ),
      ],
      child: MyApp(),
    ),
  );
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Provider - state management"),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            // il pulsante cambia pagina mandandoci su "AltraPagina"
                            // lì abbiamo riprendiamo il numero modificato qui e salvato sul provider
                            const AltraPagina(),
                      ),
                    );
                  },
                  child: Text('Altra pagina >', style: TextStyle(fontSize: 20)),
                ),
                Padding(padding: EdgeInsetsGeometry.only(top: 30)),
                Center(
                  child: Text(
                    // chiamiamo il metodo count di cui il provider gestisce lo stato
                    '${context.watch<Counter>().count}',
                    style: TextStyle(fontSize: 75),
                  ),
                ),
              ],
            ),
            // pulsante meno in basso a destra
            Positioned(
              right: 100,
              bottom: 50,
              child: FloatingActionButton(
                onPressed: () {
                  // prendiamo dal provider il metodo di counter che diminuisce il contatore
                  context.read<Counter>().minusOne();
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ),
            // pulsante più in basso a destra
            Positioned(
              right: 20,
              bottom: 50,
              child: FloatingActionButton(
                onPressed: () {
                  // prendiamo dal provider il metodo di counter che aumenta il contatore
                  context.read<Counter>().plusOne();
                },
                child: Icon(Icons.exposure_plus_1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

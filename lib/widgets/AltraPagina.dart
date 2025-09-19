import 'package:corso_flutter/providers/contatore_numeri.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AltraPagina extends StatelessWidget {
  const AltraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Altra pagina'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // chiamiamo il metodo count di cui il provider gestisce lo stato per
            // ottenere lo stato cioè il numero modificato nel file "main_32.dart".
            '${context.watch<Counter>().count}',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsetsGeometry.only(top:30)),
          Text(
            '* lo stato del contatore viene mantenuto attraverso il '
                'provider Counter \n\n** stiamo mostrando il contatore di '
                '"main_32.dart"',
            style: TextStyle(fontSize: 20,), textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

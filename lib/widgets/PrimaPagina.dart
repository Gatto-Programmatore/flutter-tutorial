import 'package:flutter/material.dart';

class PrimaPagina extends StatelessWidget {
  final String data;

  const PrimaPagina({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schermate, Navigazione e Routing'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text(
            'Prima Pagina',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),

          Padding(padding: EdgeInsetsGeometry.only(top: 10)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Testo ricevuto: ", style: TextStyle(fontSize: 20)),
              Text(data, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            ],
          ),

          Padding(padding: EdgeInsetsGeometry.only(top: 10)),

          ElevatedButton(
            onPressed: () {
              // se non abbiamo un routing passiamo il widget:
              //Navigator.push(context, MaterialPageRoute<void>(builder: (context) => SecondaPagina()));

              // se abbiamo un routing usiamo il nome:
              Navigator.pushNamed(context, '/seconda');

              // se vogliamo tornare indietro
              //Navigator.pop(context); // non serve la pagina perché l'ha memorizzata nella cronologia
            },
            child: Text('cambia pagina', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

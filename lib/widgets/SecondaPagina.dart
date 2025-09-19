import 'package:flutter/material.dart';

class SecondaPagina extends StatelessWidget {
  const SecondaPagina({super.key});

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
            'Seconda Pagina',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsetsGeometry.only(top: 10)),
          ElevatedButton(
            onPressed: () {
              // se non abbiamo un routing passiamo il widget:
              //Navigator.push(context, MaterialPageRoute<void>(builder: (context) => PrimaPagina(data: 'bbbbbb'),),);

              // se abbiamo un routing usiamo il nome:
              Navigator.pushNamed(context, '/prima');

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

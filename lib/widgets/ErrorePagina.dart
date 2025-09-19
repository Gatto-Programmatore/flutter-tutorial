import 'package:flutter/material.dart';

class ErrorePagina extends StatelessWidget {
  const ErrorePagina({super.key});

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
            'Errore',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

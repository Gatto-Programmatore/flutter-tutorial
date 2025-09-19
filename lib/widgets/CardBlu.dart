import 'package:flutter/material.dart';

// widget personalizzato senza stato (stateLess)
class CardVideo extends StatelessWidget {
  final int numero;

  const CardVideo({super.key, required this.numero});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue[300],
      margin: EdgeInsets.only(bottom: 10),
      height: 100,
      child: Text('$numero'),
    );
  }
}
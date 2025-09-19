import 'package:flutter/material.dart';

class AnimazioneHeroPage extends StatelessWidget {
  final String data;

  const AnimazioneHeroPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animazione Hero page'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: 'immagine_copertina',
                child: Image.asset('images/montagne.jpg'),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Hero(
              tag: 'favourite_icon',
              child: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

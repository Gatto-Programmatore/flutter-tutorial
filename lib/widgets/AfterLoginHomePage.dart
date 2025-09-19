import 'package:corso_flutter/auth.dart';
import 'package:flutter/material.dart';

class AfterAuthHomePage extends StatelessWidget {

  const AfterAuthHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // fai il logout attraverso la classe creata apposta
    Future<void> signOut() async {
      await Auth().signOut();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase: login, registrazione, logout"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          child: Text(
            "Home visibile dopo login o registrazione dell'utente",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

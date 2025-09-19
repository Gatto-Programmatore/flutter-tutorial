import 'package:corso_flutter/auth.dart';
import 'package:corso_flutter/widgets/AfterLoginHomePage.dart';
import 'package:corso_flutter/widgets/AuthPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // assicurarsi che flutter sia inizializzato altrimenti firebase da errore
  WidgetsFlutterBinding.ensureInitialized();

  // inizializzazione firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
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

      home: StreamBuilder(

        // prendiamo l'oggetto che monitora lo stato dell'utente
          stream: Auth().authStateChanges,

          // costruiamo la pagina in base allo stato
          builder: (context, snapshot) {

            // controlla se l'utente è loggato
            if (snapshot.hasData) {

              // se ha fatto login / registrazione mostra la home
              return AfterAuthHomePage();

            } else {
              // se non è loggato mostra la pagina di login / registrazione
              // poi ritorna qui e rifà l'if andando alla home
              return AuthPage();            }
          }
      )
    );
  }
}


/*

 */
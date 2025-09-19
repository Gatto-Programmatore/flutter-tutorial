import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Gps"), backgroundColor: Colors.green),
        body: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.only(top: 50),
            child: ElevatedButton(
              onPressed: () async {
                // prendiamo l'oggetto "location" che rappresenta il gps del dispositivo
                Location location = Location();

                bool serviceEnabled;
                PermissionStatus permissionGranted;
                LocationData locationData;

                serviceEnabled = await location.serviceEnabled();
                if (!serviceEnabled) {
                  serviceEnabled = await location.requestService();
                  if (!serviceEnabled) {
                    return;
                  }
                }

                // qui chiediamo il permesso all'utente per usare il gps del dispositivo
                // le scelta saranno: si, solo questa volta, no
                permissionGranted = await location.hasPermission();
                if (permissionGranted == PermissionStatus.denied) {
                  permissionGranted = await location.requestPermission();
                  if (permissionGranted != PermissionStatus.granted) {
                    return;
                  }
                }
                /* se scegliamo no dobbiamo far partire da 0 l'app fermandola con il
               quadrato rosso e non solo riavviarla con "play".
               Questo perche memorizza le scelte fatte.
               */

                // ottenere posizione in quel momento
                locationData = await location.getLocation();

                // ottenere posizione continua (aggiornata)
                // viene aggiornata in automatico ogni tot secondi
                /*
                location.onLocationChanged.listen((
                  LocationData currentLocation,
                ) {
                  print("cambio $currentLocation");
                });
                 */

                // stampa posizione quando premuto il pulsante
                // otteniamo dei numeri per latitudine e longitudine ovviamente
                print("cambio $locationData");
              },

              child: Text("Ottieni posizione", style: TextStyle(fontSize: 30)),

              /*
            Se vogliamo cambiare posizione gps usiamo i 3 puntini del telefono
             */
            ),
          ),
        ),
      ),
    );
  }
}

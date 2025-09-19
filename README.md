# corso_flutter

Appunti tutorial youtube per flutter (con dart).

Flutter è un framework (di google) per lo sviluppo di applicazioni mobili, web e desktop, 
utilizzando un solo linguaggio di programmazione che è Dart.

Link al corso: https://youtu.be/s3W95MMdaH8?si=SGWqJVvdR9FP_aPl
Link al corso diviso in capitoli: https://www.youtube.com/playlist?list=PLP5MAKLy8lP9VP6KL4Q9ClYCuGhet59Od



Come seguire il corso:
1. cercare gli argomenti di interesse nella cartella "tutorial" con i miei appunti divisi per argomenti
    (ordine personale non segue alla lettera i capitoli del tutorial ed anche il codice è personalizzato).
2. nella cartella lib c'è il "main" con il codice per ogni argomento del tutorial (stesso numero del tutorial).



Scaricare e configurare il progetto:
1. scaricare il progetto da git con "git clone <URL_DEL_REPOSITORY>" e andare nella cartella con "cd nome-progetto".
2. scaricare le dipendenze del progetto con "flutter pub get"
3. verificare di avere tutti gli strumenti necessari con "flutter doctor" (ad esempio android, flutter, dart, etc).
4. scegliere un dispositivo dal menu in alto (o aggiungere) e poi click destro > run sul file "main.dart" (o altro main).
   (puoi anche farlo da linea di comando con "flutter run" o "flutter devices" + "flutter run -d <device_id>" se non vuoi il web di default)
5. se incontri qualche errore puoi pulire il progetto con "flutter clean" + "flutter pub get"



Eseguire l'applicazione:
    AndroidStudio:
        1. vai nella cartella lib, 
        2. apri il file "main.dart" o quello di tuo interesse,
        3. click destro e poi "Run main.dart" oppure simbolo "play" in alto.
        4. di default parte il browser ma se vuoi un dispositivo diverso devi selezionare una voce 
        diversa dalla lista a sinistra di "play"
        (serve avviare/aggiungere prima un emulatore dal tab "running devices")



Info progetto:
- flutter
- dart
- varie dipendenze publiche da "pub.dev"
- dispositivo: google Pixel 6 Pro (usato nel tutorial)
- api: 33
- android: 13 
- AndroidStudio come ide ma funziona anche su altri es. vscode.

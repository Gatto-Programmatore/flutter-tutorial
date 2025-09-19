import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  Map datiForm = {"nome": "", "eta": ""};
  bool isChecked = false;
  String genere = "M";
  double valoreSlider = 40;
  double valoreSlider2 = 1;
  bool isSwitch = false;
  bool isCheckedForm = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form, Check, Radio, Slider, Switch"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Container(height: 30, color: Colors.green),
            Padding(padding: EdgeInsetsGeometry.only(top: 30)),
            Text("Form"),
            Form(
                key: _formKey,
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(label: Text("nome")),
                  textInputAction: TextInputAction.next, // invio va al campo seguente
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Inserisci il nome';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    datiForm["nome"] = value;
                  },
                ),TextFormField(
                  decoration: InputDecoration(label: Text("età")),
                  keyboardType: TextInputType.number, // tastiera numerica
                  textInputAction: TextInputAction.done, // invio chiude la tastiera
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Inserisci l'età";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    datiForm["eta"] = value;
                  },
                ),
                /*
                Per la checkbox dobbiamo creare un form personalizzato perché
                quello semplice non la contiene e quella semplice ma non avrebbe
                la validazione. */
                /* Flutter però ha librerie apposta come "flutter_form_builder"
                con tutti i widget normali già pronti e con validazione. Si consiglia
                di usarla. (si ha bisogno anche di "form_builder_validators")
                 */
                FormField(
                    builder: (state) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: isCheckedForm,
                              onChanged: (value){
                                setState(() {
                                  isCheckedForm = value!;
                                });
                              },
                          ),
                          Text("Accetta termini e condizioni"),
                        ],
                      ),
                      Text(
                        state.errorText ?? '',
                        style:  TextStyle(color: Colors.red),
                      ),
                    ],
                  );
                  },
                    validator: (value) {
                      if (!isCheckedForm) {
                        return "checkbox obbligatoria";
                        /* questo messaggio comparirà sotto la checkbox ma
                        distante e non come per i campi di testo. */
                      }
                      return null;
                    }
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      print(datiForm);
                    }
                  },
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  child: Text("Invio"),
                ),
              ],
            )),
            // Separatore visuale
            Padding(padding: EdgeInsetsGeometry.only(top: 10)),
            Container(height: 30, color: Colors.green),
            Padding(padding: EdgeInsetsGeometry.only(top: 10)),
            Text("Radio Button"),
            RadioListTile(
              title: Text("Maschio"),
              value: "M",
              groupValue: genere,
              onChanged: (value) {
                setState(() {
                  print(value.toString());
                  genere = value.toString();
                  print(value.toString());
                });
              },
            ),
            RadioListTile(
              title: Text("Femmina"),
              value: "F",
              groupValue: genere,
              onChanged: (value) {
                setState(() {
                  print(value.toString());
                  genere = value.toString();
                  print(value.toString());
                });
              },
            ),
            // Separatore visuale
            Container(height: 30, color: Colors.green),
            Padding(padding: EdgeInsetsGeometry.only(top: 10)),
            Text("Slider"),
            Slider(
              max: 100,
              value: valoreSlider,
              onChanged: (value) {
                setState(() {
                  valoreSlider = value;
                  print("slider impostato a $valoreSlider");
                });
              },
            ),
            Slider(
              max: 90,
              divisions: 3, // divide la barra in tot parti
              value: valoreSlider2,
              onChanged: (value) {
                setState(() {
                  valoreSlider2 = value;
                  print("slider impostato a $valoreSlider2");
                });
              },
            ),
            // Separatore visuale
            Container(height: 30, color: Colors.green),
            Padding(padding: EdgeInsetsGeometry.only(top: 10)),
            Text("Switch"),
            Switch(
              value: isSwitch,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.black,
              activeThumbColor: Colors.blue,
              activeTrackColor: Colors.amber,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                  print("switch impostato a $isSwitch");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

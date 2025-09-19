import 'package:corso_flutter/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLogin = true;

  Future<void> signIn() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<void> createUser() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accedi o Registrati")),
      body: Column(
        children: [
          TextField(
            controller: _email,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: _password,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () {
              isLogin ? signIn() : createUser();
            },
            child: Text(isLogin ? 'Login' : 'Registrati'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isLogin = !isLogin;
              });
            },
            child: Text(
              isLogin
                  ? "Non hai un account? Registrati"
                  : "Hai un account? Accedi",
            ),
          ),
          SizedBox(height: 200),
          Text(
            "* password minimo 6 caratteri",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

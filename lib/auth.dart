import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  // instanza di firebase authentication
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // utente che sta facendo un azione
  User? get currentUser => _firebaseAuth.currentUser;

  // stream che registra i cambiamenti di stato dell'autenticazione
  /* connessione sempre aperta in modo che venga interrogata per ogni azione
  dell'utente */
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // metodo per il login di un nuovo utente
  Future<String?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return null;
  }

  // metodo per registrare un nuovo utente
  Future<String?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return null;
  }

  // metodo per fare il logout
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

}

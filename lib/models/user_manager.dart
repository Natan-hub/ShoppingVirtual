import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_shoppe/models/user.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn(Usuario user) async {
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);
      print(result.user?.uid);
    } on FirebaseAuthException catch(e) {
      print(e.message);
      print(e.code);
    }
  }
}

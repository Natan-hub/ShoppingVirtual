import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_shoppe/models/user.dart';

class UserManager {
  
  final FirebaseAuth auth = FirebaseAuth.instance;
  
  void signIn(Usuario user) {
    auth.signInWithEmailAndPassword(email: user.email, password: user.password);
  }

}
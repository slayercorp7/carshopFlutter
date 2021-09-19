import 'auth_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryG {
  final _authFirebase = AuthFirebaseG();
  Future<UserCredential> signInFirebase() => _authFirebase.singIn();
}

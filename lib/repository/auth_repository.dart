import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth.dart';

class AuthRepository {
  // ignore: non_constant_identifier_names
  final _AuthFirebase = AuthFirebase();
  Future<UserCredential?> signInFirebase() =>
      _AuthFirebase.signInWithFacebook();
}

// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carrito_de_compras/repository/auth_repository.dart';
import 'package:carrito_de_compras/repository/auth_repository_google.dart';

class BlocUser implements Bloc {
  final _authRepository = AuthRepository();
  final _authRepositoryG = AuthRepositoryG();
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  // ignore: non_constant_identifier_names
  Stream<User?>? get AuthStatus => streamFirebase;
  Future<UserCredential?> signIn2() {
    return _authRepositoryG.signInFirebase();
  }

  Future<UserCredential?> signIn3() {
    return _authRepository.signInFirebase();
  }

  static out() {
    FirebaseAuth.instance.signOut();
  }

  @override
  void dispose() {}
}

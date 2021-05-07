import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _authInit = FirebaseAuth.instance;

  Stream<User> get userStatus => _authInit.authStateChanges();
}

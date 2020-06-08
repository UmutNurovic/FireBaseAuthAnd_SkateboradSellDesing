
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skateboarddesingandfirebase/authenticate/users.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users _firebasdenGelenKullanici(FirebaseUser user) {
    return user != null ? Users(uid: user.uid) : null;
  }
  Stream<Users> get users {
    return _auth.onAuthStateChanged.map(_firebasdenGelenKullanici);
  }
  Future signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _firebasdenGelenKullanici(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
  Future register(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _firebasdenGelenKullanici(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}

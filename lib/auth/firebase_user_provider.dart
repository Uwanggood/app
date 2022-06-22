import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AppFirebaseUser {
  AppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AppFirebaseUser> appFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AppFirebaseUser>((user) => currentUser = AppFirebaseUser(user));

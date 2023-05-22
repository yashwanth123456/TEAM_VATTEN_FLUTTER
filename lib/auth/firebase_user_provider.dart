import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VattenFirebaseUser {
  VattenFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VattenFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VattenFirebaseUser> vattenFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VattenFirebaseUser>(
      (user) {
        currentUser = VattenFirebaseUser(user);
        return currentUser!;
      },
    );

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../login_success/views/login_success_view.dart';

class LoginScreenController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email',
  'profile',]);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void handleGoogleSignIn() async {
    await _googleSignIn.signOut();
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        await _auth.signInWithCredential(credential);

        Get.off(() => const LoginSuccessView());
      }
    } catch (error) {
      print('Google Sign-In error: $error');
    }
  }
  void handleEmailSignIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.off(() => const LoginSuccessView());
    } catch (error) {
      print('Email Sign-In error: $error');
    }
  }



}

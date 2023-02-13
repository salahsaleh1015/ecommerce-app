import 'package:ecommerce_app/view/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  late String email , password , name ;

  Rxn<User> _user = Rxn<User>();

 String? get user=> _user.value?.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  void sinInWithGoogleMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    await _auth.signInWithCredential(credential);
  }
  void sinInWithFacebookMethod() async {
    final FacebookLoginResult result =
        await _facebookLogin.logIn(customPermissions: ["email"]);

    final accessToken = result.accessToken?.token;
    if (result.status == FacebookLoginStatus.success) {
      final faceCredential = FacebookAuthProvider.credential(accessToken!);
      _auth.signInWithCredential(faceCredential);
    }
  }

  
  void signInWithEmailAndPassword()async{
    try{
      
      await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) {
       Get.offAll( HomeScreen());
      });
    }catch(e){
      print(e);

      Get.snackbar('login error','error massage' , snackPosition: SnackPosition.BOTTOM,colorText: Colors.black);
    }
  }
}

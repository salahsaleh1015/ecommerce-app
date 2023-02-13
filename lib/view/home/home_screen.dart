import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home screen"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sign_language),
        onPressed: (){
          _auth.signOut();
          Get.offAll(LoginScreen());
        },
      ),
    );
  }
}

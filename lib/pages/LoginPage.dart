import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
   Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

FirebaseAuth auth=FirebaseAuth.instance;
User? user;

void signin(){
  try {
    GoogleAuthProvider googleauth = GoogleAuthProvider();
    auth.signInWithProvider(googleauth);
  }
  catch(error){
    print(error);
  }
}

class _LoginpageState extends State<Loginpage> {

  @override
  void initState() {
    super.initState();
    auth.authStateChanges().listen((event){
      setState(() {
        user=event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: TextButton(onPressed:signin,
            child: Text("Signin With Google"),
        ),
      ),
    );
  }
}

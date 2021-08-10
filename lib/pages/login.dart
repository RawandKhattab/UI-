// import 'dart:ffi';

// import 'package:finalproject/pages/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class login extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _login();
//   }
// }

// class _login extends State<login> {
//   final GoogleSignIn googleSignIn = new GoogleSignIn();
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   SharedPreferences preferences;
//   bool loging = false;
//   bool isLogended = false;

//   @override
//   Void initState() {
//     super.initState();
//     isSignedIn();
//   }

//   void isSignedIn() async {
//     setState(() {
//       loging = true;
//     });
//     preferences = await SharedPreferences.getInstance();
//     isLogended = await googleSignIn.isSignedIn();
//     if (isLogended) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => MyApp()));
//     }
//     setState(() {
//       loging = false;
//     });
//   }

//   Future handleSignIn() async {
//     preferences = await SharedPreferences.getInstance();
//     setState(() {
//       loging = true;
//     });
//     GoogleSignInAccount googleuser = await googleSignIn.signIn();
//     GoogleSignInAuthentication googleSignInAuthentication =
//         await googleuser.authentication;
//     // FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
//         idToken: googleSignInAuthentication.idToken,
//         accessToken: googleSignInAuthentication.accessToken);

//         if(firebaseUser!=null){
        
//         }else{

//         }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold();
//   }
// }

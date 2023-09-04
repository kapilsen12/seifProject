import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:selfproject/home_screen.dart';
import 'package:selfproject/productOverView.dart';
import 'package:selfproject/search.dart';
import 'package:selfproject/signin_dart.dart';
import 'package:selfproject/signupScreen.dart';


import 'loginScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: search(),
      debugShowCheckedModeBanner: false,
    );
  }
}


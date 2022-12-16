

import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/Home_Screen/Bus/buslist.dart';

import 'Screen/Home_Screen/home_screen.dart';
//import 'Screen/Home_Screen/Bus/buslist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//import 'package:flutter_app/home_screen/home.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),


      //kes auto-formatting nicer for build methods.
    );
  }
}
import 'package:flutter/material.dart';
import 'package:greentech/annoucement.dart';
import 'package:greentech/collection.dart';
import 'package:greentech/predictions.dart';
import 'package:greentech/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}

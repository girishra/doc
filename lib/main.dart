import 'package:flutter/material.dart';
import 'package:swasthu/sign_up_method_screen.dart';
import 'intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupMethods(),
    );
  }
}

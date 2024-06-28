import 'package:flutter/material.dart';
import 'package:shop_flutter/login/Loginpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LoginScreen(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:pk_birthday/screens/login_screen.dart';

main() => runApp(PKsApp());

class PKsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

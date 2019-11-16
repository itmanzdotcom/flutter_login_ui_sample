import 'package:flutter/material.dart';
import 'package:loginapp/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: LoginScreen(),
    );
  }
}

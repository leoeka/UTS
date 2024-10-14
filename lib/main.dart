import 'package:flutter/material.dart';
import 'package:tampilan_login/login.dart';
import 'package:tampilan_login/profil.dart';
import 'package:tampilan_login/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
         '/profil' : (context)=> ProfilePage(), 
      },
    );
  }
}
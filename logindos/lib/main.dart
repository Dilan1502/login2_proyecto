import 'package:flutter/material.dart';
import 'package:logindos/view/login.dart';
import 'package:logindos/view/registro.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context)=> login(),
    '/registro': (context)=> registro(),
    
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => login(),);
      },
     // home: HomePage(),
    );
  }
}
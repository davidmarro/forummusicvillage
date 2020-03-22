import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color.fromARGB(20, 0, 0, 0)
      ),
      home: HomePage(),
      
    );
  }
}



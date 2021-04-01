import 'package:flutter/material.dart';
import 'weather_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: time(),
    );
  }
}

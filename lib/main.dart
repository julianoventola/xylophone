import 'package:flutter/material.dart';
import 'package:xylophone/pages/xylophone_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: XylophonePage(),
    );
  }
}

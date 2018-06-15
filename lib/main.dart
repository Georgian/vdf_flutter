import 'package:flutter/material.dart';
import 'package:varfdeforma/vdf_home.dart';
import 'package:varfdeforma/vdf_repository.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new VDFHome()
    );
  }
}


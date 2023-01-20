import 'package:flutter/material.dart';
import 'package:stateful_widget_assesment/BloodBank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
      
            width: double.infinity,
            // color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [BloodBank()],
            )),
      )),
    );
  }
}

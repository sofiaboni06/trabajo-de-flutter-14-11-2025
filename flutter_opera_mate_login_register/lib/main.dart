import 'package:flutter/material.dart';
import 'package:flutter_opera_mate_login_register/screen/add.dart';
import 'package:flutter_opera_mate_login_register/screen/division.dart';
import 'package:flutter_opera_mate_login_register/screen/mainOption.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Division(),

        
      ),
    );
  }
}

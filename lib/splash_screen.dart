import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saturday/main.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const XylophoneApp();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
            child: Text(
          'ziiione',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800),
        )),
      ),
    );
  }
}

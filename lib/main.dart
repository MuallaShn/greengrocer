import 'package:baunmobile1/Card_Screen.dart';
import 'package:flutter/material.dart';

import 'home_page().dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:CardScreen(url: '', productionName: '', productionText: '',)
    );
  }
}


import 'package:flutter/material.dart';

import 'view/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Software Task',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

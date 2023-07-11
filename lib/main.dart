import 'package:flutter/material.dart';
import 'package:flutter_marvel_comics_app/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Comics App',
      home: HomePage(),
    );
  }
}

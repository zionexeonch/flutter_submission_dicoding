import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter_course/ui/home_scree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopTur',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

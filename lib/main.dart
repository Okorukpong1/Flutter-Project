import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => HomePage(), '/home': (context) => HomePage()},
    );
  }
}

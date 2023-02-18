import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // @override
  // State<MyApp> createState() => _MyAppState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Home(),
    );
  }
}

// class _MyAppState extends State<MyApp> {
 
// }

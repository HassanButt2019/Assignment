import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hodomojo/src/screens/hogo_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HogoScreen(),
    );
  }
}


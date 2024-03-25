import 'package:flutter/material.dart';
import 'package:instagramclone/RootApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const RootApp(),
      title: 'Instagram Clone',
    );
  }
}

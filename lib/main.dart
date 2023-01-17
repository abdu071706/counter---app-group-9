import 'package:flutter/material.dart';

import 'page/home_page.dart';

void main() {
  runApp(
    CounterApp(),
  );
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: Misal(),f
    );
  }
}

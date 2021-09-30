import 'package:flutter/material.dart';
import 'package:flutter_app_calculator/counter%20provider.dart';
import 'home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}




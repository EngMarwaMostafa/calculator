import 'package:flutter/material.dart';
import 'package:flutter_app_calculator/home.dart';

class CounterProvider extends InheritedWidget{
  int counter =0;
 final Widget child;
  CounterProvider({ required this.child}) : super(child: Home())  ;

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {

   return oldWidget.counter != counter;
  }
 static CounterProvider? of(BuildContext context) =>
     context.dependOnInheritedWidgetOfExactType();
}
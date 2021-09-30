import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_calculator/counter%20provider.dart';
import 'package:flutter_app_calculator/second.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title:Text('counter using Inherited Widget') ,
        actions: <Widget>[
         IconButton(icon: Icon(Icons.forward),onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Second()));
         },
         ),
        ],
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context,StateSetter setState){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${provider!.counter}',style: Theme.of(context).textTheme.display1,),
                IconButton( icon: Icon(Icons.add),onPressed: (){
                   setState((){
                    provider.counter++;
                   });
                },)
              ],
            );
          },
        ),
      ),
    );
  }
}

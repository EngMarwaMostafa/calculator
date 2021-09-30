import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_calculator/counter%20provider.dart';


class Second extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var p = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title:Text('counter using Inherited Widget') ,
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context,StateSetter setState){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${p!.counter}',style: Theme.of(context).textTheme.display1,),
                IconButton( icon: Icon(Icons.add),onPressed: (){
                  setState((){
                    p.counter++;
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

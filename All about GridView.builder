import 'dart:math';

import 'package:firstproject/ui_helper/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List fruit = [
    'apple','orange','santra','mango','kiwi','pineapple','watermelon','apple','orange','santra','mango','kiwi','pineapple','watermelon'
  ];
  Map fruit_names = {
     'fruit':['apple','orange','santra','mango','kiwi','pineapple','watermelon','apple','orange','santra','mango','kiwi','pineapple','watermelon'],
    'names':['Abhishek','Vedant','Om','Santosh','Ganesh','vijay','Balu','Abhishek','Vedant','Om','Santosh','Ganesh','vijay','Balu']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PhoneCare",style: mTextStyle(),)),
        backgroundColor: Colors.amber,
        elevation: 8,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: fruit.length,
        itemBuilder: (context,index){
        return Card(
          child: Center(
            child: Text(fruit_names['fruit'][index],style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          ),
        );
        }
      )
    );
  }
}

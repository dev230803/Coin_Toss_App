import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toss_coin/home.dart';

var number=1;
var random = new Random();
void change(){
  
 number=random.nextInt(2)+1;
 print(number);
}
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      
      colorScheme: ColorScheme.fromSeed(
        seedColor:Color.fromRGBO(12, 53, 106, 0)) )
    ,
    title: 'Coin Toss App',
    home:const HomeScreen()
  ));
}

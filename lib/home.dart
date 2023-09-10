import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toss_coin/new_toss.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var num = 0;
  String tos = '';
  var random = new Random();
  void pressed() {
    num = random.nextInt(2) + 1;
    print(num);
    if (num == 1) {
      tos = 'HEADS';
    }
    if (num == 2) {
      tos = 'TAILS';
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewToss(
                  result: tos,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Coin Toss App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animation/animation_lltdgh6i.json'),
          ElevatedButton(
            onPressed: pressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.surfaceVariant),
            child: Text('Tap To Toss',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer)),
          ),
        ],
      )),
    );
  }
}

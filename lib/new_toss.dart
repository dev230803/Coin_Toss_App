import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:toss_coin/result.dart';

class NewToss extends StatefulWidget {
  const NewToss({super.key, required this.result});
  final String result;
  
  @override
  State<NewToss> createState() => _NewTossState();
}

class _NewTossState extends State<NewToss> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  bool _istossed=false;
  bool toss=false;
  
  @override
  void initState() {
    // TODO: implement initState
   
    _controller=AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750)
      
    );
    _controller.addStatusListener((status) {
      if(status==AnimationStatus.completed){
      setState(() {
        
       
        _istossed=true;
      });}
    });
    super.initState();
  }
  @override
  void dispose() {
        
    // TODO: implement dispose
    
    _controller.dispose();
    super.dispose();
    
    
  }
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
     
      backgroundColor: Colors.black,
    body:_istossed? ResultScreen(res: widget.result) : Center(
      child: Lottie.asset('assets/animation/animation_lltetegd.json',
      controller: _controller,
      onLoaded:(comp) {
        _controller.duration=comp.duration;
        _controller.forward();
      
      },),)
    );
  }
}
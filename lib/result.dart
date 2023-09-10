import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key,required this.res});
  final String res;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  void takeback(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      backgroundColor: Colors.white,
      
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(widget.res=='HEADS')
            Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/heads.png',filterQuality: FilterQuality.high),
            ),
            if(widget.res=='TAILS')
            Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/tails_2.png',filterQuality: FilterQuality.high),
            ),
            const SizedBox(height: 30,),
            Text(widget.res,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed:takeback , 
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.surfaceVariant
              ),
              child: Text('Toss Again',
              style:Theme.of(context).textTheme.titleMedium!.copyWith(
                     color: Theme.of(context).colorScheme.onPrimaryContainer)
              )),
            
          ],
    
        ),
      ),
    );
  }
}
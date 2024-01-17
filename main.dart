import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random= Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Center(child: Text("Guess the number")),
           SizedBox(height: 20,),
           Container(
             height: 250,
             width: 300,
             decoration: BoxDecoration(
               color: Colors.grey.withOpacity(.3),
               borderRadius: BorderRadius.circular(15),
             ),
             child:  Padding(
               padding: const EdgeInsets.all(15.0),
               child:x==4 ? Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.done, color: Colors.green, size: 35,),
                   SizedBox(height: 20,),
                   Text('Congratulations bro 🎆🎉🎊, you win the lottery, your number is $x',textAlign: TextAlign.center,),
                 ],
               ):
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.error, color: Colors.red, size: 35,),
                   SizedBox(height: 20,),
                   Text('betterluck next time, your number is $x \n try again',textAlign: TextAlign.center,),
                 ],
               ),
             ),
           )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(6);
            print(x);
          setState(() {

          });
            },

          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'dart:math';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  int ballNumber = 0;
  List<String> list = ['Yes', 'No', 'Maybe', 'Probably', "Don't think so"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 0;
                });
                print('I got clicked for ball numer $ballNumber');
                
              },
              child: Text('PRESS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            ),
          ),
          SizedBox(height: 20,),
          Text(list[ballNumber],style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget{
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini state",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini APP bar',
          ),
          backgroundColor: Colors.red,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Image.asset('assets/images/white.jpg'),
          Text(
          'CatBerg',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
          )
        ],
        ),
      ),
    );
  }
}
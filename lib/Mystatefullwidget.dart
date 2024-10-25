import 'package:flutter/material.dart';

class Mystatefullwidget extends StatefulWidget {
  const Mystatefullwidget({super.key});



  @override
  State<Mystatefullwidget> createState() => _MystatefullwidgetState();
}

class _MystatefullwidgetState extends State<Mystatefullwidget> {
  var _jumlah = 0;

  void _tambah (){
    setState(() {
      _jumlah++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini state ful widget",
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("$_jumlah"),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                _tambah();
              }, 
              child: const Text('telan')),
            ],
          ),
        ),
      ),
    );
  }
}
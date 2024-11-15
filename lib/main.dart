import 'package:flutter/material.dart';
import 'package:wisata_mobile_bayu/materimodulscreens/fromscreen6.dart';
import 'package:wisata_mobile_bayu/screens/splahscreen.dart';

void main(){
  runApp(TravelApp());
}

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FromScreen6(),
    );
  }
}
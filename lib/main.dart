import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watches_app/screen/analog_watch.dart';
import 'package:watches_app/screen/digital_watch.dart';


void main(){
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: digitalwatch(),
    )
  );
}
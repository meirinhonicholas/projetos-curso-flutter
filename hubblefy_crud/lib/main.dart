import 'package:flutter/material.dart';
import 'package:hubblefy_crud/ui/HomePage.dart';
import 'package:hubblefy_crud/ui/InsertPage.dart';
import 'package:hubblefy_crud/ui/ListPage.dart';

void main(){
  runApp(MaterialApp(
    home: InsertPage(),
    theme: ThemeData(
      hintColor: Colors.orange,
      primaryColor: Colors.orange,
    ),
  ));
}
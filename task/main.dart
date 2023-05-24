import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutintern/task/loginpage.dart';
import 'package:flutintern/task/form1.dart';
import 'package:flutintern/task/regpage.dart';
void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FormDemo(),

    );
  }
}

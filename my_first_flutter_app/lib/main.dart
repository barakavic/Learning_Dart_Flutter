import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/myScaffold.dart';

void main(){
    runApp(MyFirstApp());



}
class MyFirstApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'My App',
        home: Myscaffold(),
    );
    
  }
}

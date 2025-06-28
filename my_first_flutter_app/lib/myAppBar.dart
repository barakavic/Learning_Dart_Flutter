import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  MyAppBar({required this.title});

  final Widget title;

  @override

  Widget build(BuildContext context){
    return Container(
      height: 115.00,
      decoration: BoxDecoration(color: Color.fromRGBO(201, 9, 9, 1)

      
      ),

      child: Row(
        children: <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          ),
          Expanded(child: title,
          ),
        IconButton(onPressed: null,
         icon: Icon(Icons.search),
        )
        ],
      ),
      );
      
  }

}
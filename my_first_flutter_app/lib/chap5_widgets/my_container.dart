import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Knowledge Test',
        style: TextStyle(
          fontSize: 25.00,
          fontStyle: FontStyle.normal,
        ),
        ),
        backgroundColor: Color.fromARGB(251, 221, 154, 8),
      ),

      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium?.fontSize?? 14 * 1.1 + 200.0,

        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text('This is Container widget',
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
        transform: Matrix4.rotationZ(-0.2),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,
      tooltip: 'Add',
      backgroundColor: Colors.redAccent,
      child:  Icon(Icons.add),
      ),
    );
  }
}
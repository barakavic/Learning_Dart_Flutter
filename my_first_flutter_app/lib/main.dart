import 'package:flutter/material.dart';

void main(){
    runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget{

    @override

    Widget build(BuildContext context){
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                leading: IconButton(onPressed: null,
                 icon: Icon(Icons.menu),
                 tooltip: "Navigation Menu",),
                 title: Text("Test Your Knowledge", 
                 style: TextStyle(fontSize: 25.00,
                 fontStyle: FontStyle.normal,
                 ),
                 ),
                 
    actions : <Widget>[
        IconButton(icon: Icon(Icons.search),
        onPressed: null,
        tooltip: "Search",
        ),
    ],
            ),
        body: Center(child: Text("First Flutter App",
        
        style: TextStyle(fontSize: 20.00,
        fontStyle: FontStyle.italic),
        ),
        
        ),

        floatingActionButton: FloatingActionButton(

            tooltip: 'Add',
            child: Icon(Icons.add),
            onPressed: null,
        ),



            
            

        



    
    ),

    
        );
    }

}

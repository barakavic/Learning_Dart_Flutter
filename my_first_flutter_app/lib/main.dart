import 'package:flutter/material.dart';

void main(){
    runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget{
  const MyFirstApp({super.key});


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
        color: Color.fromRGBO(29, 28, 28, 0.8),
        
        ),
    ],

    backgroundColor: Colors.purple,
            ),

    body: Column(
        
      children: [
        Text("You need to answer a few questions to know your level ...",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,

        ),
        
        ),

        ElevatedButton(onPressed: null,
         child: Text("You have chosen answer 1",
         style: TextStyle(
          fontSize: 22.00,
          color: Color.fromRGBO(29, 28, 28, 0.5),

         ),
         
         
         ),
         ),

         ElevatedButton(onPressed: null,
          child: Text("You have chosen answer 2",
         style: TextStyle(fontSize: 22.00,
         color: Color.fromRGBO(29, 28, 28, 0.5),

         ),
         ),
         ),

                  ElevatedButton(onPressed: null,
         child: Text("You have chosen answer 3",
         style: TextStyle(fontSize: 22.00,
         color: Color.fromRGBO(29, 28, 28, 0.5),
         fontFamily: 'Segoe UI',
         ),
         ),
         ),

        
        


        
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: null,
    tooltip:  "add",
    child: Icon(Icons.add),
    
    ),



            
            

        



    
    ),

    
        );
    }

}

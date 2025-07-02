import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBarOne = const SnackBar(
  content: Text(
    'Alert has been pressed',
    style: TextStyle(fontSize: 30),
    
    ),
);
final SnackBar snackBarTwo = const SnackBar(content: Text('Search has beem pressed',
style: TextStyle(fontSize: 30),
),);
final SnackBar snackBarThree = const SnackBar(content: Text('Navigation has been pressed',
style: TextStyle(fontSize: 30),
),
);

void clickNextPage(BuildContext context){

  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Know Yourself...'),
        
      ),
      body: const Center(
        child: Text('Dig deep into every layer of your mind and find yourself',
        style: TextStyle(
          fontSize: 24,
          
        ),
        textAlign: TextAlign.center,
        ),
        ),

    );
  },
  ));

}

class MyStatelessScaffoldWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            tooltip: 'Show SnackBar',
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackBarOne);
            },

             icon: Icon(Icons.add_alert),
             ),

             IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackBarTwo);
             },
              icon: Icon(Icons.search),
              tooltip: 'Search',
              ),

              IconButton(onPressed: (){
                clickNextPage(context);
              },
              icon: Icon(Icons.navigate_next),
              tooltip: 'Next Page',),

              


        ],
        leading: IconButton(
          onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(snackBarThree);
        },
        tooltip: 'Navigation Menu', 
        icon: Icon(Icons.menu),
        
        ),
        title: Text(
          'Knowledge Test',
          style: TextStyle(
            fontSize: 25.00,
            fontStyle: FontStyle.normal,
          ),
          
        ),
        backgroundColor: Color.fromARGB(225, 252, 44, 7),


        


      ),

      body: Column(
        children: [
          Text('Answer a few questions and know your level',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24
          ),
          ),

          ElevatedButton(onPressed: null,
          child: Text('You have chosen answer 1',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 31, 149, 153),
          ),
          ),
          ),

          ElevatedButton(onPressed: null,
          child: Text('You have chosen answer 2',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 31, 149, 153),
          ),
          ),
          ),

            ElevatedButton(onPressed: null,
          child: Text('You have chosen answer 3',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 31, 149, 153),
          ),
          ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      child: Icon(Icons.add),
      tooltip: 'Add',
      
      backgroundColor: Color.fromARGB(255, 110, 0, 0),
      ),

    );
  }

}
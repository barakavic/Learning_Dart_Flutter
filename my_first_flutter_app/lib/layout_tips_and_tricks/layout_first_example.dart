import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar1 = const SnackBar(
  content: Text(
'Alert has been pressed',
style: TextStyle(fontSize: 30),

  )



);

final SnackBar snackBar2 = const SnackBar(
  content: Text('Search has been pressed',
  style: TextStyle(fontSize: 30),
  ), 

);

final SnackBar snackBar3 = const SnackBar(
  content: Text('Navigation has been pressed',
  style: TextStyle(fontSize: 30),
  ),

);

void clickNextPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Know Yourself...'),
        ),
      
      body:const Center(child: Text(
        'Dig deep into each layer of yourself',
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
        ),
        ),
      );
    }));
}

class MyStatelessLayoutWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(key: scaffoldKey,
    appBar: AppBar(
      actions: <Widget>[
        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(snackBar1);


        },
        icon: Icon(Icons.add_alert),
        tooltip: 'Show SnackBar',
        ),

        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(snackBar2);
        },
         icon: Icon(Icons.search),
         tooltip: 'Search',         
         ),

         IconButton(tooltip: 'Navigate Next',
         onPressed: (){
         clickNextPage(context);
         },
         icon: Icon(Icons.navigate_next),
         ),

         

      ],
      leading: IconButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(snackBar3);
      },
      icon: Icon(Icons.menu),
      tooltip: 'Navigation Menu',

      ),

      title: Text('Knowledge Test',
      style: TextStyle(fontSize: 25.00,
      fontStyle: FontStyle.normal),
      ),
      backgroundColor: Colors.redAccent,
    ),

    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Answer a few questions and know your level...',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
        ),

        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          padding: EdgeInsets.all(10),
          width: 350,
          child: Card(
            elevation: 20,
            color: Colors.red,
            child: ElevatedButton(onPressed: null,
             child: Text('You have chosen answer 1',
             style: TextStyle(
              fontSize: 22,
              color: Colors.white,
             ),
             ),
             
            
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          padding: EdgeInsets.all(10),
          width: 350,
          child: Card(
            elevation: 20,
            color: Colors.red,
            child: ElevatedButton(onPressed: null,
            child: Text('You have chosen answer 2',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
            ), 
            ),

          ),

        ),

        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            
          ),
          padding: EdgeInsets.all(10),

          width: 350,
          child: Card(
            elevation: 20,
            color: Colors.red,
            child: ElevatedButton(onPressed: null, child: Text(
              'You have xhosen asnwer 3',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            ),
          ),
        ),

      ],
    ),
    );
    // throw UnimplementedError();
  }
}
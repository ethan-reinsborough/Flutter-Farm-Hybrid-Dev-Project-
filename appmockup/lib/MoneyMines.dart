import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Money Mines'),
      // ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/moneymines.png"), fit: BoxFit.cover),
            ),),
          Align(alignment: Alignment(0.9, 0.95),
            child: FloatingActionButton(
            onPressed: () {
            Navigator.pop(
            context,);
          },   
            tooltip: 'Go back to Flutter Farm!',
            child: Icon(Icons.arrow_back),
            backgroundColor: Colors.blue,
            ),
            ),
            Align(alignment: Alignment(-1, -1),
            child: Text('Money Amount Here')      
            ),
            Align(alignment: Alignment(0.1, -0.5),
            child: Image.asset('assets/images/placeholder3.png')   
            ),
            Align(alignment: Alignment(0, 0.7),
            child: FlatButton(onPressed: null, child: Text('GET MONEY'), color: Colors.yellow),
            ),
        ],
          ), 
          
      );
  }
}
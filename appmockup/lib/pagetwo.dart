import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Money Mines'),
        ),
        body: Stack(children: <Widget>[
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
            Align(alignment: Alignment(0, 0.3),
            child: FlatButton(onPressed: null, child: Text('GET MONEY'), color: Colors.yellow),
            ),
        ],
          ), 
          
      );
  }
}
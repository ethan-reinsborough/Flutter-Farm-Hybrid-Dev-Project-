import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Money Mines'),
        ),
        body: Stack(children: <Widget>[
          FloatingActionButton(
          onPressed: () {
            Navigator.pop(
            context,);
          },   
            tooltip: 'Go back to Flutter Farm!',
            child: Icon(Icons.arrow_back),
            backgroundColor: Colors.orange,
            ),
        ],
          ), 
          
      );
  }
}
import 'package:flutter/material.dart';
import 'pagetwo.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Farm v1.0 Mockup',
      theme: ThemeData(
      appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      )
      ),
      home: HomeRoute(),
      debugShowCheckedModeBanner: false,
    );
  }
}

  class HomeRoute extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Flutter Farm v1.0'),
        ),
        body: Stack(
          children: <Widget>[
            Align(alignment: Alignment(-1, -1),
            child: Text('Money Amount Here')      
            ),
            Align(alignment: Alignment(0, -0.2),
            child: Text('Result goes here')
            ),
            Align(alignment: Alignment(0, 0.3),
            child: FlatButton(onPressed: null, child: Text('ROLL'),),
            ),
            Align(alignment: Alignment(0, 0.7),
            child: Text('Rarest Result goes here')
            ),
        ],
        ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => PageTwo()),
              );
            }, tooltip: 'Go to Money Mines!',
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.yellow,
        ),
      );
    }
  }






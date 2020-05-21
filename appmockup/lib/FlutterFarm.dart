import 'package:flutter/material.dart';
import 'MoneyMines.dart';


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
        //appBar: AppBar(title: Text('Flutter Farm v1.0'),
        //), 
        body: Stack(
          children: <Widget>[
            Container(
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/backgroundimage.jpg"), fit: BoxFit.cover),
            ),),
            Align(alignment: Alignment(-0.9, -0.93),
            child: Text('Money')      
            ),
            Align(alignment: Alignment(-1, -0.9),
            child: Image.asset('assets/images/flutterfarmerlogodisplay.png')
            ),
            Align(alignment: Alignment(0, -0.2),
            child: Image.asset('assets/images/placeholder.jpg')
            ),
            Align(alignment: Alignment(0, 0.3),
            child: FlatButton(onPressed: null, child: Text('ROLL'),),
            ),
            Align(alignment: Alignment(0, 0.7),
            child: Image.asset('assets/images/placeholder2.jpg')
            ),
            Align(alignment: Alignment(0, 0.85),
            child: Text('Rarest Result')
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






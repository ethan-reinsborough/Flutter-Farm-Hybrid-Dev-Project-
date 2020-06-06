import 'dart:math';
import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:audioplayers/audio_cache.dart';


class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Money Mines'),
      // ), - Hide AppBar to give more space
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
            Align(alignment: Alignment(-1, -0.97),
            child: Image.asset('assets/images/moneymineslogodisplay.png')
            ),
            Align(alignment: Alignment(0, 0),
            child:  
            new ImageButton(
            children: <Widget>[],
            width: 400,
            height: 300,
            paddingTop: 5,
            pressedImage: Image.asset(
            "assets/images/coinpressed.png",
            ),
            unpressedImage: Image.asset("assets/images/coin.png"),
            onTap: () {
                setState(() {
                   
                });

                Random rnd = new Random();
                int result = rnd.nextInt(3);

                final player = AudioCache();
                final player2 = AudioCache();
                final player3 = AudioCache();

                if(result == 0){
                  player.play('sfx/coin.wav');
                }
                if(result == 1){
                  player2.play('sfx/coin2.wav');
                }
                if(result == 2){
                  player3.play('sfx/coin3.wav');
                }
              },
              ),
              ),
            ],
          ), 
      );
  }
}
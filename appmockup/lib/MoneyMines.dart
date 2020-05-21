import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

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
                Future<AudioPlayer> playLocalAsset() async {
                AudioCache cache = new AudioCache();
                return await cache.play("assets/sfx/coin2.mp3");
                }
                playLocalAsset();   
              print('+1');
            },
              ),
              ),
            ],
          ), 
      );
  }
  
}
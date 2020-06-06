import 'package:flutter/material.dart';
import 'MoneyMines.dart';
import 'dart:math';
import 'globals.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import './models/gacha.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Farm',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.blue[200],
      )),
      home: HomeRoute(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  List<Gacha> _gacha = List<Gacha>();

  Future<List<Gacha>> loadAsset() async {
    List<Gacha> gachas = List<Gacha>();
    var jsonString = await rootBundle.loadString('assets/gacha.json');
    var parseJson = json.decode(jsonString);
    for (var gacha in parseJson) {
      gachas.add(Gacha.fromJson(gacha));
    }
    return gachas;
  }

  @override
  void initState() {
    loadAsset().then((value) {
      setState(() {
        _gacha.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarOpacity: 0.2,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Flutter Farm'),
              Tab(text: 'Drop List'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/backgroundimage.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                    alignment: Alignment(-1, -1.05),
                    child: Image.asset(
                        'assets/images/flutterfarmerlogodisplay.png')),
                Align(
                    alignment: Alignment(0, -0.2),
                    child: Image.asset(drawImage)),
                Align(
                  alignment: Alignment(0, 0.69),
                  child: FlatButton(
                    onPressed: () {
                      List<Gacha> drawpool = List<Gacha>();
                      for(var gacha in _gacha){
                        for(int i = 0; i<int.parse(gacha.rarity); i++){
                          drawpool.add(gacha);
                        }
                      }
                      Random rnd2 = new Random();
                      int result = rnd2.nextInt(99);
                      drawImage = 'assets/images/${drawpool[result].title}.jpg';
                      setState(() {
                      });
                    },
                    child: Text("ROLL"),
                  ),
                ),
                Align(
                  alignment: Alignment(0.9, 0.85),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageTwo()),
                      );
                    },
                    tooltip: 'Go to Money Mines!',
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10, right: 10),
                                  child: Text('ID: ${_gacha[index].id}'),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10, right: 10),
                                  child: Text('Item: ${_gacha[index].title}'),
                                ),
                              ],
                            ),
                            Flexible(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                          bottom: 10,
                                          right: 10),
                                      child: Text(
                                          "Rarity: ${_gacha[index].rarity}")),
                                ])),
                          ],
                        )),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

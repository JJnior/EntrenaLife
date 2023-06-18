import 'package:entrenalife/screens/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
//import 'package:flutter_rounded_progress_bar/flutter_icon_rounded_progress_bar.dart';
//import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class barra extends StatefulWidget {
  barra({Key? key}) : super(key: key);

  @override
  createState() => _barra();
}

class _barra extends State<barra> {
  double _currentValue = 0;
  List<String> images = [
    '././images/1.jpeg',
    '././images/2.jpeg',
    '././images/3.jpeg',
    '././images/4.jpeg',
    '././images/5.jpeg',
  ];
  int currentIndex = 0;

  void incrementVariable() {
    setState(() {
      _currentValue += 20;
    });
  }

  Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle =
        const TextStyle(fontSize: 16.0, color: Colors.white);
    return new FloatingActionButton(
        child: new Text(text, style: roundTextStyle), onPressed: callback);
  }

  @override
  Widget build(BuildContext context) {
    return /* MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            Spacer(
              flex: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.black,
            ),
            Spacer(
              flex: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.black,
            ),
          ],
        ),
        body: */
        Container(
      child: Column(
        children: <Widget>[
          botones(),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    child: Image.asset(images[currentIndex]),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: const Text(
              'TU PROGRESO',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 20),
            ),
          ),
          Container(
              height: 150,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(children: [
                    FAProgressBar(
                      currentValue: _currentValue,
                      backgroundColor: Colors.blueGrey,
                      progressColor: Colors.blue,
                    ),
                    Spacer(),
                  ]))),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 60),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              child: const Text(
                'CONTINUAR',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                incrementVariable();
                setState(() {
                  currentIndex = (currentIndex + 1) % images.length;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

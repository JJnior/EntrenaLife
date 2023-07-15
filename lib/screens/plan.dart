import 'package:entrenalife/screens/botones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class plan extends StatelessWidget {
  const plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        botones(),
        Expanded(
            child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: <Widget>[
            CupertinoButton(
              child: Container(
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 206, 213, 213),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/plansalud.png',
                        width: 380,
                      ),
                    ),
                    SizedBox(height: 20),
                    FittedBox(
                      child: Text(
                        'Plan Salud',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 1, 1, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'salud');
              },
            ),
            CupertinoButton(
              child: Container(
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 176, 182, 182),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/planversebien.png',
                        width: 380,
                      ),
                    ),
                    SizedBox(height: 5),
                    FittedBox(
                      child: Text(
                        'Plan Verse Bien',
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 1, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'versebien');
              },
            ),
          ],
        ))
      ]),
    );
  }
}

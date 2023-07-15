import 'package:entrenalife/direccion/boton2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class versebien extends StatefulWidget {
  versebien({Key? key}) : super(key: key);

  @override
  State<versebien> createState() => _versebienState();
}

class _versebienState extends State<versebien> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          boton2(),
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              children: <Widget>[
                CupertinoButton(
                  child: Container(
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8FCBCB),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/entrenador.png',
                            width: 121,
                          ),
                        ),
                        SizedBox(height: 20),
                        FittedBox(
                          child: Text(
                            'Entrenador',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
                CupertinoButton(
                  child: Container(
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8FCBCB),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/unnamed.png',
                            width: 121,
                          ),
                        ),
                        SizedBox(height: 20),
                        FittedBox(
                          child: Text(
                            'Mi Rutina',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'barra2');
                  },
                ),
                CupertinoButton(
                  child: Container(
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8FCBCB),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/unnamed (3).png',
                            width: 121,
                          ),
                        ),
                        SizedBox(height: 20),
                        FittedBox(
                          child: Text(
                            'Unirse al Meet',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
                CupertinoButton(
                  child: Container(
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8FCBCB),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/unnamed (2).png',
                            width: 121,
                          ),
                        ),
                        SizedBox(height: 20),
                        FittedBox(
                          child: Text(
                            'Suplementos',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

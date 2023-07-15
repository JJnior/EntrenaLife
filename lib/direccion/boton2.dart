import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class boton2 extends StatefulWidget {
  boton2({Key? key}) : super(key: key);

  @override
  createState() => _boton2State();
}

class _boton2State extends State<boton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                      child: Image.asset('././images/conejo.jpeg', width: 60),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'plan');
                      })
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                      child: Center(
                        child: Text('MI rutina'),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CupertinoButton(
                    child: Icon(Icons.person),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class botones3 extends StatefulWidget {
  botones3({Key? key}) : super(key: key);

  @override
  createState() => _botones3();
}

class _botones3 extends State<botones3> {
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
                        Navigator.pushReplacementNamed(context, 'versebien');
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

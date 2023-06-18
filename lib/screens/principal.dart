import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  principal({Key? key}) : super(key: key);

  @override
  createState() => _principal();
}

class _principal extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Progrss Bar'),
      ),
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    '././images/conejo.jpeg',
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

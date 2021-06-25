import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

const flutterColor = Color(0xFF40D0FD);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withBlue(10),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Gaming computer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Graphic cards',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'CPU\'s',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'News',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              width: double.infinity,
              height: 700,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 800,
                    height: 400,
                    color: Colors.cyan,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

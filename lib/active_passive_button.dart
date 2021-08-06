import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedButton = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedButton = 'LEFT';
                });
                print(selectedButton);
              },
              child: Container(
                padding: EdgeInsets.only(top: 90.0, bottom: 20.0),
                width: 100,
                height: 200,
                color:
                selectedButton == 'LEFT' ? Colors.blueAccent : Colors.blueGrey,
                child: Text(
                  selectedButton == 'LEFT' ? 'ACTIVE BUTTON' : 'PASSIVE BUTTON',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedButton = 'RIGHT';
                });
                print(selectedButton);
              },
              child: Container(
                padding: EdgeInsets.only(top: 90.0, bottom: 20.0),
                width: 100,
                height: 200,
                color:
                selectedButton == 'RIGHT' ? Colors.blueAccent : Colors.blueGrey,
                child: Text(
                  selectedButton == 'RIGHT' ? 'ACTIVE BUTTON' : 'PASSIVE BUTTON',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
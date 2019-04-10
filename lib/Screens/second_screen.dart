import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  @override
  _SecondScreenState createState() => _SecondScreenState();

}

class _SecondScreenState extends State<SecondScreen> {

  final _text_input = new TextEditingController();
  var result = "";
  void showResult()
  {
    setState(() {
        this.result = this._text_input.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _text_input,
              decoration: InputDecoration(
                hintText: "Type something here :"
              ),
            ),
            RaisedButton(
              child: Text("Show"),
              onPressed: showResult,
            ),
            Text(
              "Result : $result",
              style: TextStyle(
                fontSize: 20
              ),
              )
          ],
        ),
      ),
    );
  }

}
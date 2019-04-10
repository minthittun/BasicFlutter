import 'package:flutter/material.dart';
import 'second_screen.dart';

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Basic Flutter',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            RaisedButton(
              child: Text("Go to second screen"),
              onPressed: (){
                
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SecondScreen())
                );

              },
            )
          ],
        ),
      ),
    );
  }

}
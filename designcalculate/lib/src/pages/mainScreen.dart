import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          
             child:Column(
               children: <Widget>[
                 SizedBox(height: 200.0),
                 Text('Hello word..')
               ],
             ) ,
        ),
      ),
      
    );
  }
}
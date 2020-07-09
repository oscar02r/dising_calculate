import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final title;
  ButtonApp({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
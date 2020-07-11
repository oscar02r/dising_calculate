import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Color _color = Color.fromRGBO(219, 146, 124, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: _color,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 200.0),
              Text(
                'Hello word..',
              ),
              _containerButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _containerButton() {
    return Expanded(
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero),
            child: Container(
                 height: double.infinity,
                 width:double.infinity,
                color:  Color.fromRGBO(249, 251, 251, 0.5), 
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _firstRow(),
                      _secondRow(),
                      _thirdRow(),
                      _fouthRow(),
                      _fifthRow(),
                    ]))));
  }

  Widget _button(String title, int r, int g, int b, double o1, double o2) {
    Color _background = Color.fromRGBO(219, 146, 124, o2);
    _background = title != '='
        ? Color.fromRGBO(219, 146, 124, o2)
        : Color.fromRGBO(118, 16, 0, o2);

    return ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
          alignment: Alignment.center,
          width: 70.0,
          height: 50.0,
          color: _background,
          child: Text(
            title,
            style: TextStyle(
                color: Color.fromRGBO(r, g, b, o1),
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('C', 249, 251, 251, 1.0, 1.0),
        _button('+/-', 249, 251, 251, 1.0, 1.0),
        _button('%', 249, 251, 251, 1.0, 1.0),
        _button('/', 249, 251, 251, 1.0, 1.0),
      ],
    );
  }

Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('7', 118, 16, 0, 1.0, 0.0),
        _button('8', 118, 16, 0, 1.0, 0.0),
        _button('9', 118, 16, 0, 1.0, 0.0),
        _button('X', 249, 251, 251, 1.0, 1.0),
      ],
    );
  }

  Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('4', 118, 16, 0, 1.0, 0.0),
        _button('5', 118, 16, 0, 1.0, 0.0),
        _button('6', 118, 16, 0, 1.0, 0.0),
        _button('-', 249, 251, 251, 1.0, 1.0),
      ],
    );
  }

  Widget _fouthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('1', 118, 16, 0, 1.0, 0.0),
        _button('2', 118, 16, 0, 1.0, 0.0),
        _button('3', 118, 16, 0, 1.0, 0.0),
        _button('+', 249, 251, 251, 1.0, 1.0),
      ],
    );
  }

  Widget _fifthRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button('0', 118, 16, 0, 1.0, 0.0),
          SizedBox(
            width: 70.0,
            height: 50.0,
          ),
          _button(',', 118, 16, 0, 1.0, 0.0),
          _button('=', 249, 251, 251, 1.0, 1.0)
        ]);
  }
}

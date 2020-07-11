import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final List<String> buttons = [
    "C", "+/-", "%","/",
    "7", "8", "9", "X",
    "4", "5", "6", "-",
    "1", "2", "3", "+",
    "0", ",", "="

  ];
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color _color = Color.fromRGBO(219, 146, 124, 1);
  String _operate ='Hola mundo';
  String _result = 'result';
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
               Container(
                padding: EdgeInsets.only(right: 30.0),
                alignment: Alignment.bottomRight,
                child: Text( '$_operate',
                      style: TextStyle(
                        color: Color.fromRGBO(118, 16, 0, 1.0 ),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        
                        )
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30.0),
                alignment: Alignment.bottomRight,
                child: Text( '$_result',
                      style: TextStyle(
                        color: Color.fromRGBO(118, 16, 0, 1.0 ),
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        
                        )
                ),
              ),
              SizedBox(height: 20.0,),
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

Widget _button(String title, int r, int g, int b, double o1, double o2, var _onTap) {
    
    Color _background = Color.fromRGBO(219, 146, 124, o2);
    _background = title != '='
        ? Color.fromRGBO(219, 146, 124, o2)
        : Color.fromRGBO(118, 16, 0, o2);

    return GestureDetector(
          onTap: _onTap,
          child: ClipRRect(
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
      ),
    );
  }


  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('C', 249, 251, 251, 1.0, 1.0, _onTap('C')),
        _button('+/-', 249, 251, 251, 1.0, 1.0, _onTap('+/-')),
        _button('%', 249, 251, 251, 1.0, 1.0, _onTap('%')),
        _button('/', 249, 251, 251, 1.0, 1.0, _onTap('/')),
      ],
    );
  }

Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('7', 118, 16, 0, 1.0, 0.0, _onTap('7')),
        _button('8', 118, 16, 0, 1.0, 0.0, _onTap('8')),
        _button('9', 118, 16, 0, 1.0, 0.0, _onTap('9')),
        _button('X', 249, 251, 251, 1.0, 1.0, _onTap('X')),
      ],
    );
  }

Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('4', 118, 16, 0, 1.0, 0.0, _onTap('4')),
        _button('5', 118, 16, 0, 1.0, 0.0, _onTap('5')),
        _button('6', 118, 16, 0, 1.0, 0.0, _onTap('6')),
        _button('-', 249, 251, 251, 1.0, 1.0, _onTap('-')),
      ],
    );
  }

Widget _fouthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button('1', 118, 16, 0, 1.0, 0.0, _onTap('1')),
        _button('2', 118, 16, 0, 1.0, 0.0, _onTap('2')),
        _button('3', 118, 16, 0, 1.0, 0.0, _onTap('3')),
        _button('+', 249, 251, 251, 1.0, 1.0, _onTap('+')),
      ],
    );
  }

  Widget _fifthRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button('0', 118, 16, 0, 1.0, 0.0, _onTap('0')),
          SizedBox(
            width: 70.0,
            height: 50.0,
          ),
          _button(',', 118, 16, 0, 1.0, 0.0, _onTap(',')),
          _button('=', 249, 251, 251, 1.0, 1.0, _onTap('='))
        ]);
  }

 Function _onTap( String title){
      switch (title) {
        case "C":
        
           return () {setState(() { 
             _result= ''; 
             _operate =''; });
            };
          break;

        case "1":
          return (){
            setState(() {
              _operate += title;
            });
          };
        break;
         case "2":
          return (){
            setState(() {
              _operate += title;
            });
          };
        break;
         case "3":
          return (){
            setState(() {
              _operate += title;
            });
          };
        
         case "4":
          return (){
            setState(() {
              _operate += title;
            });
          };
        
         case "5":
          return (){
            setState(() {
              _operate += title;
            });
          };
        case "6":
          return (){
            setState(() {
              _operate += title;
            });
          };

          case "7":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "8":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "9":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "0":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "+/-":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "%":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "/":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "X":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "-":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "+":
          return (){
            setState(() {
              _operate += title;
            });
          };
          case "=":
          return (){
            setState(() {
              _operate += title;
              
            });
          };
        default:
       return () {
       };
      }
 }

}



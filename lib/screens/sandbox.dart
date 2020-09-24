import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0.0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 1000),
        opacity: _opacity,
        child: AnimatedContainer(
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          duration: Duration(milliseconds: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(
                  'animate',
                ),
                onPressed: () {
                  setState(() {
                    _width = 500;
                    _color = Colors.purple;
                    _opacity = 0;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

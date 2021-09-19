// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GoogleBtn extends StatefulWidget {
  final String text;
  double widhtC = 0.0;
  double heightC = 0.0;
  late final VoidCallback onPressed;

  GoogleBtn({
    Key? key,
    required this.heightC,
    required this.widhtC,
    required this.onPressed,
    required this.text,
  });

  @override
  State<StatefulWidget> createState() {
    return (_GoogleBtn());
  }
}

class _GoogleBtn extends State<GoogleBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.all(15),
          width: widget.widhtC,
          height: widget.heightC,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                colors: [Color(0xFFC25B5A), Color(0xFFCF3431)],
                begin: FractionalOffset(0.4, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.7],
              )),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 1,
              height: 1.5,
              fontSize: 20,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}

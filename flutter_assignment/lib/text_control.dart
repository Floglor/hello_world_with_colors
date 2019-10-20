import 'package:flutter/material.dart';


class TextControl extends StatelessWidget {


  final Function onPressed;

  TextControl({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: onPressed,
    );
  }


}
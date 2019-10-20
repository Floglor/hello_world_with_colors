import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {

  final String string;


  TextWidget({@required this.string});

  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
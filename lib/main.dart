import 'package:flutter/material.dart';
import 'dart:math' as math;

Color _backgroundColor = Colors.white;

void main() => runApp(ColorApp());

class ColorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorAppState();
  }
}

class _ColorAppState extends State<ColorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => setState(() => _backgroundColor = generateRandomColor()),
         child: Center(
           child: Text(
             "Hey there",
             style: TextStyle(
               fontSize: 40,
               foreground: Paint()
                 ..style = PaintingStyle.stroke
                 ..strokeWidth = 1
                 ..color = Colors.black
             ),
           ),
         ),
        ) ,
        backgroundColor: _backgroundColor,
      ),
    );
  }

  Color generateRandomColor(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }
}

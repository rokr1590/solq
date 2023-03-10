import 'package:flutter/material.dart';
class CustomCircle extends StatelessWidget {
  final List<Color> colorList;
  final double cWidth;
  final double cHeight;
  const CustomCircle({Key? key,required this.colorList,required this.cHeight,required this.cWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cWidth,
      height: cHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colorList, ),
      ),
    );
  }
}

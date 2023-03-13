import 'dart:ui';

import 'package:flutter/material.dart' ;

class FrostWidget extends StatelessWidget {
  final Widget child;
  late double xSigma;
  late double ySigma;
  late double? fwidth;
  late double? fheight;
  FrostWidget({Key? key,required this.child,required this.ySigma,required this.xSigma,this.fheight,this.fwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: xSigma,sigmaY: ySigma),
        child: Container(
          width: fwidth??MediaQuery.sizeOf(context).width,
          height: fheight??MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade200.withOpacity(0),
          ),
          child: child
        ),
      ),
    );
  }
}

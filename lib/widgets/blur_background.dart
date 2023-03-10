import 'dart:ui';

import 'package:flutter/material.dart' ;

class FrostWidget extends StatelessWidget {
  final Widget child;
  late double xSigma;
  late double ySigma;
  FrostWidget({Key? key,required this.child,required this.ySigma,required this.xSigma}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: xSigma,sigmaY: ySigma),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0)
          ),
          child: child
        ),
      ),
    );
  }
}

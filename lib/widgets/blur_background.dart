import 'dart:ui';

import 'package:flutter/material.dart' ;

class FrostWidget extends StatelessWidget {
  final Widget child;
  const FrostWidget({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50,sigmaY: 50),
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

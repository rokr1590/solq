import 'dart:async';

import 'package:flutter/material.dart';
class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key,required this.child,required this.endoff,required this.begoff}) : super(key: key);
  final Widget child;
  final Offset endoff;
  final Offset begoff;
  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}
class _AnimatedTextState extends State<AnimatedText> with SingleTickerProviderStateMixin{
  late final AnimationController _controller =AnimationController(vsync: this,duration: const Duration(seconds: 1));
  late final Animation<Offset> _animation=Tween(
    begin: widget.begoff,
    end:widget.endoff,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  late final Animation<double> _fadeIn = Tween<double>(begin: 0.0, end: 0.1).animate(_controller);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>_controller.forward());
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
        child: widget.child
    );
  }
}



import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';

class animationTimer extends StatefulWidget {
  final Widget child;
  final int time;

  const animationTimer({required this.time, required this.child});

  @override
  State<animationTimer> createState() => _animationTimerState();
}

// ignore: camel_case_types
class _animationTimerState extends State<animationTimer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    final curve =
        CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    _animOffset = Tween<Offset>(
      begin: const Offset(0.0, -0.6),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(milliseconds: widget.time), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class ExampleGestureDetector extends StatefulWidget {
  const ExampleGestureDetector({super.key});

  @override
  State<ExampleGestureDetector> createState() => _ExampleGestureDetectorState();
}

class _ExampleGestureDetectorState extends State<ExampleGestureDetector> {
  double _top = 0;
  double _left = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            onPanUpdate: (details) {
              _top = max(0, _top + details.delta.dy);
              _left = max(0, _left + details.delta.dx);
              setState(
                () {},
              );
            },
            child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(color: Colors.redAccent,shape: BoxShape.circle),
      ),
          ),
        )
      ],
    ));
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  void _playAnimation() {
    Random random = Random();
    _width = random.nextInt(300).toDouble() + 50;
    _height = random.nextInt(300).toDouble() + 50;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble() + 10);
  }

  double _width = 200;
  double _height = 200;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedScreen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_fill_rounded),
        onPressed: () {
          setState(() {
            _playAnimation();
          });
        },
      ),
    );
  }
}

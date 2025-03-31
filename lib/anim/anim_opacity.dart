/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Opacity 动画示例',
      home: OpacityAnimation(),
    ),
  );
}

class OpacityAnimation extends StatefulWidget {
  @override
  _OpacityAnimationState createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('淡入淡出动画'),
      ),
      body: Center(
        child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(
              milliseconds: 1000
            ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: '现实隐藏',
          child: Icon(Icons.send),
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          }
      ),
    );
  }
}
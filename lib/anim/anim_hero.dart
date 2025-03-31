/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hero 动画示例',
      home: HeroAnimation(),
    ),
  );
}

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面切换动画图一"),
      ),
      body: GestureDetector(
        child: Hero(
            tag: 'picture',
            child: Image.asset('images/1.jpeg',
              width: 50,
              height: 50,
            ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              DestinationPage()));
        },
      ),

    );
  }
}

class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面切换动画图二"),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'picture',
          child: Image.asset('images/1.jpeg',),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
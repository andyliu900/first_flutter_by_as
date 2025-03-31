/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'BoxDecoration装饰盒子',
      home: Roundconer(),
    ),
  );
}

class ImageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子-背景图示例'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                image: ExactAssetImage('images/1.jpeg'),
                fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}

class Roundconer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子-边框圆角示例'),
      ),
      body: Center(
        child: Container(
          width: 260,
          height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 4),
            borderRadius: BorderRadius.circular(36),
              image: DecorationImage(
                  image: ExactAssetImage('images/1.jpeg'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
    );
  }
}
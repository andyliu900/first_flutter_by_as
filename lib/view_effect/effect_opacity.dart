/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Opacity不透明度示例',
      home: LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity不透明度示例'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.3,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: new Image.asset('images/1.jpeg'),
          ),
        ),
      ),
    );
  }
}
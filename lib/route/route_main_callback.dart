/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据示例',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面跳转返回数据示例"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(context, MaterialPageRoute
                (builder:
                  (context) => SecondPage()));
              print('返回值：$result');
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$result')));
            },
            child: Text('跳转到第二页')),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择一条数据'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context, 'hi google');
                },
                    child: Text('hi google')),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(onPressed: () {
                Navigator.pop(context, 'hi flutter');
              },
                  child: Text('hi flutter')),
            )
          ],
        ),
      ),
    );
  }
}
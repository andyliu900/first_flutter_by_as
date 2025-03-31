/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    title: '导航页面示例',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例-商品列表'),
      ),
      body: Center(
        child: new ElevatedButton(
          child: Text('查看商品详情页面'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
            SecondScreen()));
          },
        )
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例-商品详情'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            }, child: Text('返回上一页')),
      ),
    );
  }
}
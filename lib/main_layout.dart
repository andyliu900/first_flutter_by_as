/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container 布局容器示例',
      home: new WrapLayoutDemo(),
    );
  }
}

class ContainerLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = new Container(
      decoration: new BoxDecoration(
        color: Colors.grey
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: [
              new Expanded(
                  child: new Container(
                    width: 150, 
                    height: 150,
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10, color: Colors.blueGrey),
                      borderRadius: const BorderRadius.all(const Radius.circular(8))
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset('images/1.jpeg'),
                  )
              ),
              new Expanded(
                  child: new Container(
                    width: 150,
                    height: 150,
                    decoration: new BoxDecoration(
                        border: new Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius: const BorderRadius.all(const Radius.circular(8))
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset('images/2.jpeg'),
                  )
              )
            ],
          ),

          new Row(
            children: [
              new Expanded(
                  child: new Container(
                    width: 150,
                    height: 150,
                    decoration: new BoxDecoration(
                        border: new Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius: const BorderRadius.all(const Radius.circular(8))
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset('images/3.jpeg'),
                  )
              ),
              new Expanded(
                  child: new Container(
                    width: 150,
                    height: 150,
                    decoration: new BoxDecoration(
                        border: new Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius: const BorderRadius.all(const Radius.circular(8))
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset('images/1.jpeg'),
                  )
              )
            ],
          )
        ],
      ),
    );
    
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Container 布局容器示例'),
      ),
      body: container,
    );
  }
}

class CenterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Center 居中布局示例'),
      ),
      body: new Center(
        child: new Text('Hello Flutter',
          style: TextStyle(
            fontSize: 36
          )
        ),
      ),
    );
  }
}

class AlignLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align 布局对齐示例'),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0, 0),
            child: new Image.asset('images/1.jpeg', width: 128, height: 128),
          ),

          new Align(
            alignment: new FractionalOffset(1, 0),
            child: new Image.asset('images/2.jpeg', width: 128, height: 128),
          ),

          new Align(
            alignment: FractionalOffset.center,
            child: new Image.asset('images/3.jpeg', width: 128, height: 128),
          ),

          new Align(
            alignment: FractionalOffset.bottomLeft,
            child: new Image.asset('images/4.jpeg', width: 128, height: 128),
          ),

          new Align(
            alignment: FractionalOffset.bottomRight,
            child: new Image.asset('images/5.jpeg', width: 128, height: 128),
          ),
        ],
      ),
    );
  }
}

class BoxFitLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FittedBox 缩放布局示例'),
      ),
      body: new Container(
        color: Colors.grey,
        width: 300,
        height: 300,
        child: new FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
          child: new Container(
            color: Colors.orange,
            child: new Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}

class StackLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget stack = new Stack(
      alignment: Alignment.topCenter,
      children: [
        new CircleAvatar(
          backgroundImage: new AssetImage('images/1.jpeg'),
          radius: 100,
        ),

        new Container(
          decoration: new BoxDecoration(color: Colors.black38),
          child: new Text(
            '我是小飞侠',
            style: new TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stack 层叠布局示例'),
      ),
      body: new Center(
        child: stack,
      )
    );
  }
}

class PositionedLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Positioned 布局示例'),
      ),
      body: new Center(
        child: new Stack(
          children: [
            new Image.network('https://bkimg.cdn.bcebos'
                '.com/pic/4ec2d5628535e5dd9cba9d5876c6a7efcf1b62a6'),
            new Positioned(
                bottom: 50,
                right: 50,
                child: new Text(
                  'hi flutter',
                  style: new TextStyle(
                      fontSize: 36,
                      color: Colors.white
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class OverflowBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('OverflowBox 现实示例'),
      ),
      body: Container(
        color: Colors.green,
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(50),
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
        ),
        // OverflowBox(
        //   alignment: Alignment.topLeft,
        //   maxWidth: 400,
        //   maxHeight: 400,
        //   child: Container(
        //     color: Colors.blue,
        //     width: 300,
        //     height: 300,
        //   ),
        // ),
      ),
    );
  }
}

class SizedBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SizedBox 现实示例'),
      ),
      body: SizedBox(
        width: 200,
        height: 300,
        child: const Card(
          child: Text('SizedBox',
            style: TextStyle(
              fontSize: 36
            ),
          ),
        ),
      ),
    );
  }
}

class FractionallySizedBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FractionallySizedBox 示例'),
      ),
      body: new Container(
        color: Colors.blue,
        height: 200,
        width: 200,
        child: new FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: new Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class TransformLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Transform 示例'),
      ),
      body: Center(
        child: new Container(
          color: Colors.green,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.rotationZ(0.5),
            child: Container(
              padding: const EdgeInsets.all(8),
              color: const Color(0xFFE8581C),
              child: const Text('Transform 转换'),
            ),
          ),
        )
      ),
    );
  }
}

class WrapLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Wrap 示例'),
      ),
      body: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: [
          Chip(
            label: Text('name1'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '1',
                style: TextStyle(
                  fontSize: 10
                ),
              ),
            ),
          ),

          Chip(
            label: Text('name2'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '2',
                style: TextStyle(
                    fontSize: 10
                ),
              ),
            ),
          ),

          Chip(
            label: Text('name3'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '3',
                style: TextStyle(
                    fontSize: 10
                ),
              ),
            ),
          ),

          Chip(
            label: Text('name4'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '4',
                style: TextStyle(
                    fontSize: 10
                ),
              ),
            ),
          ),

          Chip(
            label: Text('name5'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '5',
                style: TextStyle(
                    fontSize: 10
                ),
              ),
            ),
          ),

          Chip(
            label: Text('name6'),
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: new Text(
                '6',
                style: TextStyle(
                    fontSize: 10
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
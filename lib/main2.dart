/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

/**
 * Chapter 4 常用容器
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
      title: '容器组件示例',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        // primarySwatch: Colors.blue,
      ),
      home: new GridViewDemo(),
    );
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('容器组件示例'),
    //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     ),
    //     body: Center(
    //       child: Container(
    //         width: 200,
    //         height: 200,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           border: new Border.all(
    //             color: Colors.green,
    //             width: 8
    //           ),
    //           borderRadius: const BorderRadius.all(const Radius.circular(8)),
    //         ),
    //         child: Text('Flutter',
    //           textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 28),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Image.network('https://ww1.sinaimg.cn/mw690/6958e69dgy1ho3gd7v1brj20j60j6jsu.jpg',
        fit: BoxFit.fitWidth),
    );
  }
}

class TextStyleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('文本组件'),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            '红色 + 黑色删除线 + 25号',
            style: new TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xffff0000),
              fontSize: 25
            ),
          ),

          new Text(
            '橙色 + 下划线 + 24号',
            style: new TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xffff9900),
                fontSize: 24
            ),
          ),

          new Text(
            '虚线上画线 + 斜体 + 23号',
            style: new TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23,
                fontStyle: FontStyle.italic
            ),
          ),

          new Text(
            '加粗 + 24号',
            style: new TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6
            ),
          ),
        ],
      ),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('图标组件示例'),
      ),
      body: new Icon(Icons.phone,
      color: Colors.green[500],
      size: 80,),
    );
  }
}

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('图标按钮组件示例'),
      ),
      body: new Center(
        child: new IconButton(onPressed: () {
          print('按下操作');
        },
            icon: Icon(Icons.volume_up, size: 48,)),
      ),
    );
  }
}

class ElevatedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ElevatedButton 组件示例'),
      ),
      body: new Center(
        child: new ElevatedButton(
          child: new Text('ElevatedButton 组件'),
          onPressed: () {
            print('按下操作');
          },
        ),
      ),
    );
  }
}

class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('水平列表示例'),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                  color: Colors.lightBlue,
              ),
              Container(
                width: 160,
                color: Colors.amber,
              ),
              Container(
                width: 160,
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text(
                      '水平',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36
                      ),
                    ),

                    Text(
                      '列表',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36
                      ),
                    ),

                    Icon(Icons.list)
                  ],
                ),
              ),

              Container(
                width: 160,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 160,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: Colors.pinkAccent,
              ),
            ],
          )
      ),
    );
  }
}

class NormalListViewDemo extends StatelessWidget {
  final List<String> items = new List<String>.generate(500, (i) => "Item: $i");

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('长列表示例'),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index) {
              return new ListTile(
                leading: new Icon(Icons.phone),
                title: new Text(items[index]),
              );
            }),
      );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('网格列表示例'),
      ),

      body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 30,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('0'),
            const Text('1'),
            const Text('2'),
            const Text('3'),
            const Text('4'),
            const Text('5'),
            const Text('6'),
            const Text('7'),
            const Text('8'),
            const Text('9'),
            const Text('10'),
            const Text('11'),
            const Text('12'),
            const Text('13'),
            const Text('14'),
            const Text('15'),
          ],
      )
    );
  }
}
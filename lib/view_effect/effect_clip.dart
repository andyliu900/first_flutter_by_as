/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Clip 剪裁示例',
      home: ClipPathLayout(),
    ),
  );
}

class ClipOvalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval圆形剪裁示例'),
      ),
      body: Center(
        child: ClipOval(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(
              'images/8.jpeg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class ClipRRectLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect 圆角矩形剪裁示例'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            //圆角弧度，值越大弧度越大
              Radius.circular(30.0)),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(
              'images/8.jpeg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class ClipRectLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClipRect矩形剪裁示例',
        ),
      ),
      body: Center(
        child: ClipRect(
          clipper: RectClipper(),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(
              'images/8.jpeg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

//自定义Clipper,类型为Rect
class RectClipper extends CustomClipper<Rect>{

  //重写获取剪裁范围
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(50.0, 50.0, size.width - 100.0,  size.height- 100.0);
  }

  //重写是否重新剪裁
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }

}

class ClipPathLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClipPath路径剪裁示例',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ClipPath(
          clipper: TriangleCliper(),
          child: SizedBox(
            width: 200.0,
            height:200.0,
            child: Image.asset("images/8.jpeg",fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}

//自定义三角形Clipper,类型为Path
class TriangleCliper extends CustomClipper<Path>{
  //重写获取剪裁范围
  @override
  Path getClip(Size size) {
    Path path = Path();
    //移动至起始点(50.0,50.0)
    path.moveTo(50.0,50.0);
    //开始画线 起始点(50.0,50.0) 终止点(50.0,10.0)
    path.lineTo(50.0,100.0);
    //开始画线 起始点(50.0,10.0) 终止点(100.0,50.0)
    path.lineTo(100.0,50.0);
    path.close();//使这些点构成三角形
    return path;
  }
  //重写是否重新剪裁
  @override
  bool shouldReclip(TriangleCliper oldClipper) {
    return true;
  }
}
/*
 * Copyright (C) 2025 Baidu, Inc. All Rights Reserved.
 */

import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: '传递数据示例',
    //商品列表
    home: ProductList(),
  ));
}

class ProductList extends StatelessWidget {

  final List<Product> products = List.generate(20, (i) => Product('商品 $i', '这是一个商品详情 $i'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => ProduceDetail(product: products[index])));
              },
            );
          }),
    );
  }
}

class ProduceDetail extends StatelessWidget {

  final Product product;

  ProduceDetail({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Center(
        child: Text(
          '${product.description}'
        ),
      ),
    );
  }
}
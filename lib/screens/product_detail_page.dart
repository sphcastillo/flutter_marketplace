import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final int productIndex;

  const ProductDetailPage({Key? key, required this.productIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Center(
          child: Hero(
            tag: 'product_$productIndex',
            child: Icon(Icons.image, size: 200, color: Colors.grey),
          ),
        ));
  }
}

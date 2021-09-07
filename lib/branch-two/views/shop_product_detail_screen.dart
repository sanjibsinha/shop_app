import 'package:flutter/material.dart';

class ShopProductDetailScreen extends StatelessWidget {
  const ShopProductDetailScreen({Key? key}) : super(key: key);
  static const routename = "/product-detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail Page'),
      ),
      body: const Center(
        child: Text(
          'We will get product detail here',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}

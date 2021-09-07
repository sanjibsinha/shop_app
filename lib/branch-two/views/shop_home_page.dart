import 'package:flutter/material.dart';
import '../controllers/product_view.dart';

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products App',
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
      body: const ProductView(),
    );
  }
}

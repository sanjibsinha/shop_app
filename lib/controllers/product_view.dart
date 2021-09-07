import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../controllers/product_item.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).products;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: const ProductItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}

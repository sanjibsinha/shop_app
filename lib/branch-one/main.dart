import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
      ],
      child: const ShopAppWithProvider(),
    ),
  );
}

class ShopAppWithProvider extends StatelessWidget {
  const ShopAppWithProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShoHomePage(),
    );
  }
}

class ShoHomePage extends StatelessWidget {
  const ShoHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).products;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('All products length:'),
            Text(
              '${context.watch<Products>().products.length}',
              key: const Key('productKeyOne'),
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '${products.length}',
              key: const Key('productKeyTwo'),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

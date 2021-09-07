import 'package:flutter/material.dart';
import 'shop_product_detail_screen.dart';
import 'shop_home_page.dart';

class ShopAppWithProvider extends StatelessWidget {
  const ShopAppWithProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Colors.deepOrange,
      ),
      home: const ShopHomePage(),
      routes: {
        ShopProductDetailScreen.routename: (context) =>
            const ShopProductDetailScreen(),
      },
    );
  }
}

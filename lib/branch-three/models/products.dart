import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> products = [
    Product(
      id: 'p1',
      title: 'Classic Watch',
      description: 'A Classic Watch accessorized with style.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/02/24/20/39/clock-3179167_960_720.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Shoe with Gears',
      description: 'Shoes paired with excersise accessories.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_960_720.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Wedding Dress',
      description: 'A Wedding Dress combining old style and modern look.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/11/14/04/25/bride-1822587_960_720.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Classy Hat',
      description: 'A Woman Hat for her fashion statement.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/13/12/40/fashion-2309519_960_720.jpg',
    ),
  ];

  Product findById(String id) {
    return products.firstWhere((product) => product.id == id);
  }
}

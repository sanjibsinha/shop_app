import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_with_provider/branch-four/controllers/modern_war_app.dart';
import '../views/shop_app_with_provider.dart';
import '../models/products.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
      ],
      // child: const ShopAppWithProvider(),
      child: ModernWarApp(),
    ),
  );
}

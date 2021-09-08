import 'package:flutter/material.dart';
import '../views/home_page.dart';

class ModernWarApp extends StatelessWidget {
  // This widget is the root of your application.
  // it defines all the routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
      },
      title: 'Modern War History',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        backgroundColor: Color(0xFFF3F5F7),
      ),
    );
  }
}

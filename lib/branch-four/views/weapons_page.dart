import 'package:flutter/material.dart';

class WeaponsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Weapons Used in Wars',
          style: TextStyle(
            fontFamily: 'Trajan Pro',
            fontSize: 20.00,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Text('Weapons Page'),
        ],
      ),
    );
  }
}

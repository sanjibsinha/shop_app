import 'package:flutter/material.dart';

class GestureDetectorController extends StatelessWidget {
  final String headLine;
  final Widget gestureWidget;

  GestureDetectorController({
    required this.headLine,
    required this.gestureWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gestureWidget),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 150.0,
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.00)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 4.00,
              spreadRadius: 2.00,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.lightBlueAccent,
              Colors.white,
            ],
          ),
        ),
        child: Text(
          headLine,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.00,
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);
  static const routename = '/all-keys';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$productId',
          style: const TextStyle(
            fontFamily: 'Schuyler',
            fontSize: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(
                25.0,
              ),
              padding: EdgeInsets.all(
                25.0,
              ),
              child: Text(
                productId.toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Anton',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

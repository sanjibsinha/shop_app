import 'package:flutter/material.dart';
import '../models/cyberwar_model.dart';
import '../views/cyberwar_page.dart';

class CyberController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cyber War 2000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Schuyler',
                  fontSize: 25.00,
                  letterSpacing: 2.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CyberWarPage()),
                  );
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Trajan Pro',
                    fontSize: 15.00,
                    letterSpacing: 1.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.00),
        Container(
          height: 300.00,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cyberWars.length,
            itemBuilder: (BuildContext context, int index) {
              CyberWars cyberWar = cyberWars[index];
              return Container(
                margin: const EdgeInsets.all(10.00),
                width: 200.00,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 5.00,
                      child: Container(
                        height: 180.00,
                        width: 210.00,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15.00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Top ${cyberWar.cyberWeapons.length} weapons used.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 18.00,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                cyberWar.summary,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schuyler',
                                  fontSize: 15.00,
                                  letterSpacing: 1.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.00),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.00, 2.00),
                            blurRadius: 8.00,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.00),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CyberWarPage()),
                                );
                              },
                              child: Image(
                                height: 160.00,
                                width: 160.00,
                                image: AssetImage(cyberWar.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.00,
                            bottom: 10.00,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  cyberWar.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Schuyler',
                                    fontSize: 25.00,
                                    letterSpacing: 1.5,
                                    backgroundColor: Colors.black,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.00,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

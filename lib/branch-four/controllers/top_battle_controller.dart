import 'package:flutter/material.dart';
import '../models/nineteen_hundred_wars.dart';
import '../views/about_all_wars.dart';

class TopBattleController extends StatelessWidget {
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
                'Top Battles',
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
                    MaterialPageRoute(builder: (context) => AboutAllWars()),
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
            itemCount: nineteenHundredWars.length,
            itemBuilder: (BuildContext context, int index) {
              NineteenHundredWars nineteenHundredWar =
                  nineteenHundredWars[index];
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
                                '${nineteenHundredWar.weapons.length} weapons used.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 18.00,
                                  letterSpacing: 2.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                nineteenHundredWar.summary,
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
                            child: Image(
                              height: 160.00,
                              width: 180.00,
                              image: AssetImage(nineteenHundredWar.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 10.00,
                            bottom: 10.00,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  nineteenHundredWar.name,
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
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${nineteenHundredWar.centuries}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Trajan Pro',
                                        fontSize: 15.00,
                                        letterSpacing: 1.0,
                                        backgroundColor: Colors.black,
                                        color: Colors.lightGreenAccent,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.00,
                                    ),
                                    Text(
                                      nineteenHundredWar.place,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Trajan Pro',
                                        fontSize: 15.00,
                                        letterSpacing: 1.0,
                                        backgroundColor: Colors.black,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
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

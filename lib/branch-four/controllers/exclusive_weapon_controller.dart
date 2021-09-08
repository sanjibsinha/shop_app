import 'package:flutter/material.dart';
import '../models/nineteen_hundred_wars.dart';
import '../models/weapon_used.dart';
import '../views/weapons_page.dart';

class WeaponController extends StatelessWidget {
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
                'Weapons Used',
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
                    MaterialPageRoute(builder: (context) => WeaponsPage()),
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
              WeaponUsed weaponUsed = weapons[index];
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
                            children: <Widget>[
                              Text(
                                weaponUsed.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schuyler',
                                  fontSize: 25.00,
                                  letterSpacing: 1.0,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                weaponUsed.type,
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
                    SizedBox(
                      height: 10.00,
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
                                      builder: (context) => WeaponsPage()),
                                );
                              },
                              child: Image(
                                height: 200.00,
                                width: 250.00,
                                image: AssetImage(weaponUsed.imageUrl),
                                fit: BoxFit.cover,
                              ),
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

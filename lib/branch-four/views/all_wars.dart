import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controllers/gesturedetector_controller.dart';
import '../models/nineteen_hundred_wars.dart';
import '../views/seventeen_wars/seventeen_home.dart';

import 'about_all_wars.dart';
import 'cyberwar_page.dart';

class AllWars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          stretch: true,
          expandedHeight: 350.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              fit: BoxFit.cover,
              image: AssetImage('images/1.jpg'),
            ),
            stretchModes: [
              StretchMode.zoomBackground,
            ],
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 320,
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                // text direction does the same thing horizontally
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'All major Modern Wars in last three '
                      'hundred years...',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Trajan Pro',
                          foreground: Paint()
                            ..color = Colors.red
                            ..strokeWidth = 2.0
                            ..style = PaintingStyle.stroke),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetectorController(
                        headLine: '1700',
                        gestureWidget: SeventeenHome(),
                      ),
                      GestureDetectorController(
                        headLine: '1800',
                        gestureWidget: AboutAllWars(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetectorController(
                        headLine: '1900',
                        gestureWidget: AboutAllWars(),
                      ),
                      GestureDetectorController(
                        headLine: 'Cyber War',
                        gestureWidget: CyberWarPage(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 300.00,
              color: Colors.redAccent,
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
                                  width: 160.00,
                                  image:
                                      AssetImage(nineteenHundredWar.imageUrl),
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
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ]),
        ),
      ],
    );
  }
}

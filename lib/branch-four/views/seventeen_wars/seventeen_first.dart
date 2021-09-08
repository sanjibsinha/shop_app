import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/seventeen_hundred_wars.dart';
import '../../models/weapon_used.dart';
import '../../views/home_page.dart';
import '../../views/seventeen_wars/seventeen_second.dart';
import 'seventeen_home.dart';

class SeventeenFirst extends StatefulWidget {
  @override
  _SeventeenFirstState createState() => _SeventeenFirstState();
}

class _SeventeenFirstState extends State<SeventeenFirst> {
  int _currentTab = 0;

  List<SeventeenHundredWars> seventeenWars = [
    seventeenHundredWars[0],
    seventeenHundredWars[1],
    seventeenHundredWars[2],
    seventeenHundredWars[3],
    seventeenHundredWars[4],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            stretch: true,
            expandedHeight: 450.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                fit: BoxFit.cover,
                image: AssetImage('images/11.jpg'),
              ),
              stretchModes: [
                StretchMode.zoomBackground,
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 1200.0,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // text direction does the same thing horizontally
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        seventeenWars[0].name,
                        style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schuyler',
                            foreground: Paint()
                              ..color = Colors.red
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 2.0, right: 5.0, bottom: 10.0),
                      child: Text(
                        '${seventeenWars[0].description}',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2.5,
                            letterSpacing: 1.2),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Home',
                            ),
                          ),
                          SizedBox(
                            width: 200.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeventeenSecond()),
                              );
                            },
                            child: Text(
                              'Next',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.00,
              backgroundColor: Colors.lightBlueAccent,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.00,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_searching,
              size: 30.00,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

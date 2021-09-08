import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controllers/gesturedetector_controller.dart';
import '../models/page_model.dart';
import '../views/cyberwar_page.dart';
import '../views/seventeen_wars/seventeen_home.dart';

class AboutAllWars extends StatefulWidget {
  @override
  _AboutAllWarsState createState() => _AboutAllWarsState();
}

class _AboutAllWarsState extends State<AboutAllWars> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: 'About all wars',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: AssetImage('images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                            ),
                            iconSize: 25.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Let\'s Read...',
                        style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Trajan Pro',
                            foreground: Paint()
                              ..color = Colors.red
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 5.0),
                          Text(
                            'The War History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.yellow,
                              decoration: TextDecoration.combine([
                                TextDecoration.underline,
                                TextDecoration.overline,
                              ]),
                              decorationColor: Colors.red,
                              decorationStyle: TextDecorationStyle.wavy,
                              letterSpacing: 5.0,
                              wordSpacing: 10.0,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  blurRadius: 2.0,
                                  offset: Offset(5, 1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.00,
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

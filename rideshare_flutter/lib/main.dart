import 'package:flutter/material.dart';
import 'package:rideshare_flutter/Defaults/default_values.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 2;

  final pages = [
    Center(
      child: Text('Search for carpool.'),
    ),
    Center(
      child: Text('Publish carpool.'),
    ),
    Center(
      child: Text('Current rides.'),
    ),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RideShare'),
        backgroundColor: Colors.green[500],
      ),
      body: pages[indexClicked],
      backgroundColor: Colors.green[50],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.green[500],
        type: BottomNavigationBarType
            .shifting, //Can also be BottomNavigationBarType.fixed
        elevation: 60,
        selectedItemColor: DefaultValues.bottomNavItemSelectedColor,
        unselectedItemColor: DefaultValues.bottomNavItemColor,
        currentIndex: indexClicked,
        selectedFontSize: DefaultValues.bottomNavTextSelectedSize,
        unselectedFontSize: DefaultValues.bottomNavTextSize,
        selectedIconTheme: const IconThemeData(
          size: DefaultValues.bottomNavIconSelectedsize,
        ),
        unselectedIconTheme: const IconThemeData(
          size: DefaultValues.bottomNavIconSize,
        ),
        showUnselectedLabels: DefaultValues.bottomNavShowUnselectedLabel,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: DefaultValues.bottomNavColor,
            icon: Icon(
              DefaultValues.bottomNavItemIcon[0],
            ),
            label: DefaultValues.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: DefaultValues.bottomNavColor,
            icon: Icon(
              DefaultValues.bottomNavItemIcon[1],
            ),
            label: DefaultValues.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            backgroundColor: DefaultValues.bottomNavColor,
            icon: Icon(
              DefaultValues.bottomNavItemIcon[2],
            ),
            label: DefaultValues.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            backgroundColor: DefaultValues.bottomNavColor,
            icon: Icon(
              DefaultValues.bottomNavItemIcon[3],
            ),
            label: DefaultValues.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            backgroundColor: DefaultValues.bottomNavColor,
            icon: Icon(
              DefaultValues.bottomNavItemIcon[4],
            ),
            label: DefaultValues.bottomNavItemText[4],
          ),
        ],
      ),
    );
  }
}
//comment

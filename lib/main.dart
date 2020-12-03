import 'package:flutter/cupertino.dart';
import 'package:senior_project/routes/favouritesPage.dart';
import 'package:senior_project/routes/homePage.dart';
import 'package:senior_project/routes/searchAdsPage.dart';
import 'package:senior_project/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor),

        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int curIndex = 0;
  final List<Widget> _items = [
    HomePage(),
    SearchAdsPage(),
    FavouritesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Главная"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Объявления"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            title: Text("Избранное"),
          ),
        ],
        onTap: (index) {
          setState(() {
            curIndex = index;
          });
        },
      ),
      body: _items[curIndex],

    );
  }
}


import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Избранное"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "На этой странице будут избранные \n карточки авто или объявления.",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ) //
    );
  }
}

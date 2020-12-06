import 'package:flutter/material.dart';

class SearchAdsPage extends StatefulWidget {
  @override
  _SearchAdsPageState createState() => _SearchAdsPageState();
}

class _SearchAdsPageState extends State<SearchAdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Объявления"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),

      // body: ListView(
      //   children: <Widget>[
      //     Padding(
      //         padding: const EdgeInsets.all(16.0))
      //   ],
      // ),

      body: Container(
        alignment: Alignment.center,
        child: Text(
          "На этой странице будут объявления.",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ) //
    );
  }
}
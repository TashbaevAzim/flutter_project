import 'package:flutter/material.dart';

class CarDetailsPage extends StatefulWidget {
  @override
  _CarDetailsPageState createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Информация об авто"),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        elevation: 8.0,
      ),
    );
  }
}

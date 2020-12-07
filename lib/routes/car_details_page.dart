import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:senior_project/style.dart';
import 'package:senior_project/carInfo.dart';
import 'package:senior_project/textFieldContainer.dart';

class CarDetailsPage extends StatefulWidget {
  final CarInfo datas;
  CarDetailsPage(this.datas);

  @override
  _CarDetailsPageState createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kTextLightColor,
                    borderRadius: BorderRadius.all(Radius.circular(12),
                    ),
                  ),
                  child: Icon(
                    Icons.clear,
                    size: 24,

                  ),
                ),
              ),
              Text(
                "${widget.datas.govNumber}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kTextLightColor,
                  borderRadius: BorderRadius.all(Radius.circular(12),
                  ),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  size: 24,
                ),
              ),
            ],
          ),
          Container(
            width: 370,
            height: 550,
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Марка: ", style: kTitleTextstyle),
                    Text("${widget.datas.brand}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Модель: ", style: kTitleTextstyle),
                    Text("${widget.datas.model}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Год: ", style: kTitleTextstyle),
                    Text("${widget.datas.year}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Цвет: ", style: kTitleTextstyle),
                    Text("${widget.datas.color}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Руль: ", style: kTitleTextstyle),
                    Text("${widget.datas.steeringWheel}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Объем: ", style: kTitleTextstyle),
                    Text("${widget.datas.volume}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Периоды владения: ", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("${widget.datas.periodsOfOwnerships}", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Машина ", style: kTitleTextstyle),
                    widget.datas.pledge == true ?
                      Text("в залоге", style: kTitleTextstyle) :
                      Text("не в залоге", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Штрафы: ", style: kTitleTextstyle),
                    widget.datas.fines == true ?
                    Text("есть", style: kTitleTextstyle) :
                    Text("нет", style: kTitleTextstyle),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Объявления: ", style: kTitleTextstyle),
                    widget.datas.fines == true ?
                    Text("есть", style: kTitleTextstyle) :
                    Text("нет", style: kTitleTextstyle),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:senior_project/style.dart';
import 'package:senior_project/carInfo.dart';
import 'car_details_page.dart';

class AdsDetailsPage extends StatefulWidget {
  final CarInfo datas;
  AdsDetailsPage(this.datas);

  @override
  _AdsDetailsPageState createState() => _AdsDetailsPageState();
}

class _AdsDetailsPageState extends State<AdsDetailsPage> {


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
                  "Объявление",
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
                Text("${widget.datas.adDescription}", style: kTitleTextstyle),
                // ListView.builder(
                //     itemBuilder: (context, index) {
                //       return CarContainer(context, index);
                //     },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container CarContainer(BuildContext context, int index) {
  List<CarInfo> carList = CarInfo.list;

  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.only(
      bottom: 10,
    ),
    decoration: BoxDecoration(
      color: kTextLightColor,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CarDetailsPage(carList[index]);
          }),
          );
        },
        //                            onTap: () {Navigator.of(context).push(MaterialPageRoute (builder: (_) => CarDetailsPage(carList[index]),
        child: Row(
          children: <Widget>[
            Image(
              width: 65,
              image: AssetImage("assets/images/carIconCard.png"),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Информация об авто",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${carList[index].govNumber}",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            ),
            Icon(
                Icons.keyboard_arrow_right,
                size: 35
            )
          ],
        ),
      ),
    ),
  );
}
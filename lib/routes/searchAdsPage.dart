import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:senior_project/carInfo.dart';

import '../style.dart';
import 'car_details_page.dart';

class SearchAdsPage extends StatefulWidget {
  @override
  _SearchAdsPageState createState() => _SearchAdsPageState();
}

class _SearchAdsPageState extends State<SearchAdsPage> {
  List<CarInfo> carAdsList = CarInfo.list;

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

      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
                children: <Widget>[
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      top: 10,
                    ),
                    itemCount: carAdsList.length,
                    itemBuilder: (context, index) {
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
                            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return CarDetailsPage(carAdsList[index]);
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Ищу владельца авто",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "${carAdsList[index].govNumber}",
                                      style: TextStyle(
                                          fontSize: 18
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 35
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
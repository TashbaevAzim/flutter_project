import 'package:flutter/cupertino.dart';

class CarInfo {
  final String govNumber;
  final String brand;
  final String model;
  final int year;
  final String color;
  final String steeringWheel;
  final double volume;
  final bool pledge;
  final bool fines;
  final String periodsOfOwnerships;

  CarInfo (
      { this.govNumber,
        this.brand,
        this.model,
        this.year,
        this.color,
        this.steeringWheel,
        this.volume,
        this.pledge,
        this.fines,
        this.periodsOfOwnerships
      });

  static List<CarInfo> list = [
    CarInfo(
      govNumber: "01KG123ACP",
      brand: "Toyota",
      model: "Highlander",
      year: 2010,
      color: "Белый",
      steeringWheel: "Левый",
      volume: 3456,
      pledge: false,
      fines: false,
      periodsOfOwnerships: "26.05.2014 - 04.04.2018 \n 04.04.2018 - настоящее время"
    ),
    CarInfo(
        govNumber: "01KG321ABD",
        brand: "Toyota",
        model: "Highlander",
        year: 2010,
        color: "Белый",
        steeringWheel: "Левый",
        volume: 3456,
        pledge: false,
        fines: false,
        periodsOfOwnerships: "26.05.2014 - 04.04.2018 \n 04.04.2018 - настоящее время"
    )
  ];
}
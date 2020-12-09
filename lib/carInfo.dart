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
  final bool ad;
  final String adTitle;
  final String adDescription;

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
        this.periodsOfOwnerships,
        this.ad,
        this.adTitle,
        this.adDescription
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
      periodsOfOwnerships: "26.05.2014 - 04.04.2018 \n 04.04.2018 - настоящее время",
      ad: true,
      adTitle: "Ищу владельца авто",
      adDescription: "Добрый день, ищу владельца авто, просьба обращаться по номеру +996700999777"
    ),
    CarInfo(
        govNumber: "01KG321ABD",
        brand: "Subaru",
        model: "Outback",
        year: 2010,
        color: "Белый",
        steeringWheel: "Левый",
        volume: 3456,
        pledge: true,
        fines: true,
        periodsOfOwnerships: "26.05.2014 - 04.04.2018 \n 04.04.2018 - настоящее время",
        ad: true,
        adTitle: "Продаю авто",
        adDescription: "Добрый день, продаю авто! Обращаться по номеру +996700777999"
    )
  ];
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PageTile {
  String firstText;
  String secondText;
  String imagePath;
  late Color cores;

  PageTile({
    required this.firstText,
    required this.secondText,
    required this.imagePath,
    required this.cores,
  });
}

List<PageTile> pages = [
  PageTile(
    firstText: '3 Entregas Grátis\nagora!',
    secondText: 'Em mercado!',
    imagePath: 'assets/images/market.png',
    cores: HexColor('#E6F2EE'),
  ),
  PageTile(
    firstText: 'Tudo do seu jeito',
    secondText: 'Vá de Comfort',
    imagePath: 'assets/images/uber_black.png',
    cores: HexColor('#545454'),
  ),
  PageTile(
    firstText: 'Quer viajar com\nconforto?',
    secondText: 'Vá de Comfort',
    imagePath: 'assets/images/uberx.png',
    cores: HexColor('#997328'),
  ),
  PageTile(
    firstText: 'Chegue sempre\ncom estilo',
    secondText: 'Vá de uber black',
    imagePath: 'assets/images/black_car.png',
    cores: HexColor('#E4C416'),
  ),
];

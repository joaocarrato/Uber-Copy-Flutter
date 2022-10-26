import 'package:flutter/material.dart';

class Address {
  String adress;
  String titleAdress;
  IconData iconChoose;

  Address({
    required this.adress,
    required this.titleAdress,
    required this.iconChoose,
  });
}

// List<Address> addressList = [
//     ['Trabalho', 'Rua Maria Rita, 163 - Ipiranga', Icons.work],
//     [
//       'Hofbrähaus Belo Horizonte',
//       'Av. Do Contorno, 7613, Belo Horizonte',
//       Icons.watch_later_rounded
//     ],
//     ['Casa', 'Rua Gal. Astolfo Ferreira Mendes, 464', Icons.home],
//   ];

List<Address> adressList = [
  Address(
      adress: 'Rua Maria Rita, 163 - Ipiranga',
      titleAdress: 'Trabalho',
      iconChoose: Icons.work),
  Address(
      adress: 'Av. Do Contorno, 7613, Belo Horizonte',
      titleAdress: 'Hofbrähaus Belo Horizonte',
      iconChoose: Icons.watch_later_rounded),
  Address(
      adress: 'Rua Gal. Astolfo Ferreira Mendes, 464',
      titleAdress: 'Casa',
      iconChoose: Icons.home),
];

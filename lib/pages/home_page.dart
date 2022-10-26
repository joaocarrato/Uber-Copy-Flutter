// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uber_copy/pages/account.dart';
import 'package:uber_copy/pages/activity.dart';
import 'package:uber_copy/pages/initial_page.dart';
import 'package:uber_copy/util/adress.dart';
import 'package:uber_copy/util/adress_list.dart';
import 'package:uber_copy/util/buttons.dart';
import 'package:uber_copy/util/page_tile.dart';
import 'package:uber_copy/util/page_view_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List homePages = [
    InitialPage(),
    ActivityPage(),
    AccountPage(),
  ];

  int _currentIndex = 0;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePages[_currentPage],
      // BOTÃO DE NAVEGAÇÃO
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedIconTheme: IconThemeData(
          color: Colors.black54,
          size: 20,
        ),
        fixedColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
            _currentPage = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Página inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Atividade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uber_copy/util/adress.dart';
import 'package:uber_copy/util/adress_list.dart';
import 'package:uber_copy/util/buttons.dart';
import 'package:uber_copy/util/page_tile.dart';
import 'package:uber_copy/util/page_view_tile.dart';

class InitialPage extends StatefulWidget {
  InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 25, 16, 16),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  // BANNERS LISTA
                  Container(
                    height: 125,
                    child: PageView.builder(
                        itemCount: pages.length,
                        controller: _pageController,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 19),
                            child: PageViewTile(
                              pageTile: pages[index],
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 10),

                  // PONTOS INDICADORES LISTA
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: pages.length,
                    effect: SlideEffect(
                        dotHeight: 10,
                        spacing: 3,
                        dotWidth: 10,
                        activeDotColor: Colors.black,
                        dotColor: Colors.black45),
                  ),

                  SizedBox(height: 10),

                  // BOTÕES FLUTUANTES
                  Container(
                    height: 110,
                    child: Row(
                      children: [
                        Buttons(
                          message: 'Viagem',
                          iconPath: 'assets/icons/hatchback.png',
                        ),
                        Buttons(
                          message: 'Envios',
                          iconPath: 'assets/icons/box.png',
                        ),
                        Buttons(
                          message: 'Mercado',
                          iconPath: 'assets/icons/shopping-bag.png',
                        ),
                        Buttons(
                          message: 'Reserve',
                          iconPath: 'assets/icons/schedule.png',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // BARRA DE PESQUISA
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor('#EEEEEE'),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 6),
                              Text(
                                'Para onde?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.watch_later_rounded,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      Text(
                                        'Agora',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Colors.black,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ENDEREÇOS
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 150,
                      // color: Colors.red,
                      child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return AdressList(
                              adressList: adressList[index],
                            );
                          },
                          separatorBuilder: ((context, index) => Divider(
                                thickness: 1.2,
                              )),
                          itemCount: adressList.length),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

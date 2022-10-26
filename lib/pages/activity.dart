// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:uber_copy/util/races_tile.dart';

class ActivityPage extends StatelessWidget {
  ActivityPage({super.key});

  // List corridas = [
  //   ['Rua Maria Rita', '22 de out • 8:00 PM', 'R\$14,92'],
  //   ['Av. Do Contorno', '15 de out • 9:23 PM', 'R\$34,91'],
  //   ['Rua General Astolfo\nFerreira Mendes', '9 de out • 11:25 PM', 'R\$19,92'],
  //   ['UberX', '9 de out • 11:23 PM', 'R\$0,00 • Cancelada'],
  //   ['UberX', '9 de out • 11:23 PM', 'R\$0,00 • Cancelada'],
  //   ['Rua Maria Rita', '8 de out • 7:18 PM', 'R\$16,99'],
  //   ['Rua Maria Rita', '2 de out • 11:42 PM', 'R\$14,91'],
  //   ['Rua General Astolfo Ferreira Mendes', '25 de set • 11:23 PM', 'R\$14,77'],
  //   ['Rua Maria Rita', '25 de set • 2:46 PM', 'R\$15,15'],
  //   ['UberX', '25 de set • 2:44 PM', 'R\$0,00 • Cancelada'],
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TEXTO INICIAL
                  Text(
                    'Atividade',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 22),
                  Text(
                    'Anteriores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),

                  SizedBox(height: 15),

                  // ULTIMA VIAGEM
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 275,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/uber_path.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rua General Astolfo\nFerreira mendes',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '23 de out • 10:50 PM',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'R\$14,96',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // LISTA DE VIAGENS
                  Races(actualRace: 0),
                  Races(actualRace: 1),
                  Races(actualRace: 2),
                  Races(actualRace: 3),
                  Races(actualRace: 4),
                  Races(actualRace: 5),
                  Races(actualRace: 6),
                  Races(actualRace: 7),
                  Races(actualRace: 8),
                  Races(actualRace: 9),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

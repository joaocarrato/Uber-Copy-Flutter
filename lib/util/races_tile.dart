import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Races extends StatelessWidget {
  int actualRace;
  Races({
    required this.actualRace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 107,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#EEEEEE'),
                      image: DecorationImage(
                        image: AssetImage('assets/images/uberx.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            corridas[actualRace][0],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            corridas[actualRace][1],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            corridas[actualRace][2],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.grey[500],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              child: Divider(thickness: 1),
              width: 260,
            ),
          ),
        ],
      ),
    );
  }
}

List corridas = [
  ['Rua Teste do Uber 01', '22 de out • 8:00 PM', 'R\$14,92'],
  ['Av. Do Contorno', '15 de out • 9:23 PM', 'R\$34,91'],
  ['Rua Teste do Uber 02', '9 de out • 11:25 PM', 'R\$19,92'],
  ['UberX', '9 de out • 11:23 PM', 'R\$0,00 • Cancelada'],
  ['UberX', '9 de out • 11:23 PM', 'R\$0,00 • Cancelada'],
  ['Av. Paulista', '8 de out • 7:18 PM', 'R\$16,99'],
  ['Rua Liberdade', '2 de out • 11:42 PM', 'R\$14,91'],
  ['Rua Liberdade de Madeira', '25 de set • 11:23 PM', 'R\$14,77'],
  ['Rua General Honorio', '25 de set • 2:46 PM', 'R\$15,15'],
  ['UberX', '25 de set • 2:44 PM', 'R\$0,00 • Cancelada'],
];

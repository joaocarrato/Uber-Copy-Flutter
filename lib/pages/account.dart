// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:uber_copy/util/account_tile.dart';
import 'package:uber_copy/util/options_section.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          // TITULO E FOTO COM NOTA
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 110,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Joao Paulo\nCarrato Pacheco',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/joao.jpg'),
                        radius: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(4),
                    height: 22,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HexColor('#EEEEEE'),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 15,
                        ),
                        Text(
                          '4.94',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // BALÃO DE AJUDA - PAGAMENT - VIAGENS
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AccountButton(
                                buttonText: 'Ajuda',
                                accountIcon: Icons.support),
                            AccountButton(
                                buttonText: 'Pagamento',
                                accountIcon: Icons.wallet_sharp),
                            AccountButton(
                                buttonText: 'Ajuda',
                                accountIcon: Icons.watch_later_sharp),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // BALÃO CHECAGEM DE SEGURANÇA
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#EEEEEE'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Checagem de segurança\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Ative recursos adicionais para melhorar seu perfil\n de segurança',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Divider(thickness: 4),

                    // SEÇÃO DE OPÇÕES
                    Messages(
                      messagesIcon: Icons.email_rounded,
                      messageText: 'Mensagens',
                    ),
                    Messages(
                      messagesIcon: Icons.confirmation_number,
                      messageText: 'Uber Pass',
                    ),
                    Messages(
                      messagesIcon: Icons.settings,
                      messageText: 'Configurações',
                    ),
                    Messages(
                      messagesIcon: Icons.person_search,
                      messageText:
                          'Ganhe dinheiro dirigindo ou\nfazendo entregas',
                    ),
                    Messages(
                      messagesIcon: Icons.info,
                      messageText: 'Juridico',
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
                      child: Text(
                        'v3.532.10002',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

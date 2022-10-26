// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountButton extends StatelessWidget {
  String buttonText;
  IconData accountIcon;
  AccountButton({
    required this.buttonText,
    required this.accountIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HexColor('#EEEEEE'),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            accountIcon,
            size: 27,
          ),
          SizedBox(height: 7),
          Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

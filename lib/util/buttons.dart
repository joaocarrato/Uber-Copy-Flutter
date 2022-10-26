import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Buttons extends StatelessWidget {
  String message;
  String iconPath;

  Buttons({
    required this.message,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor('#EEEEEE'),
            ),
            child: Image(
              image: AssetImage(
                iconPath,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            message,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

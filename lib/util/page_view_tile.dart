// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uber_copy/util/page_tile.dart';

class PageViewTile extends StatefulWidget {
  final PageTile pageTile;
  const PageViewTile({
    Key? key,
    required this.pageTile,
  }) : super(key: key);

  @override
  State<PageViewTile> createState() => _PageViewTileState();
}

class _PageViewTileState extends State<PageViewTile> {
  List<Color> cores = [
    HexColor('#E6F2EE'),
    HexColor('#545454'),
    HexColor('#997328'),
    HexColor('#EC4436'),
  ];

  int _currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.pageTile.cores,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pageTile.firstText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        widget.pageTile.secondText,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.arrow_forward, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.pageTile.imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uber_copy/util/adress_list.dart';

class AdressList extends StatelessWidget {
  final Address adressList;
  const AdressList({
    Key? key,
    required this.adressList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        adressList.titleAdress,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      subtitle: Text(
        adressList.adress,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey[600],
          letterSpacing: 0.7,
        ),
      ),
      leading: Icon(adressList.iconChoose),
      iconColor: Colors.grey[800],
      minLeadingWidth: 25,
      onLongPress: () {},
    );
  }
}

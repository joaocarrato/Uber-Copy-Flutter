import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  IconData messagesIcon;
  String messageText;

  Messages({
    required this.messagesIcon,
    required this.messageText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {},
      horizontalTitleGap: 5,
      leading: Icon(
        messagesIcon,
        color: Colors.black,
        size: 18,
      ),
      title: Text(
        messageText,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
    );
  }
}

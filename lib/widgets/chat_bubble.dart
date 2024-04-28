import 'package:flutter/material.dart';
import '../models/message.dart';

class ChatBubble extends StatelessWidget {
  final Message message;

  ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.userName == 'YourUserName' ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        if (message.userName != 'YourUserName') CircleAvatar(child: Text(message.userName[0])),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: message.userName == 'YourUserName' ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(message.text),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/mocking_data.dart';
import 'package:whatsapp_clone/features/individual_chat_messaging/widget/my_message_card.dart';
import 'package:whatsapp_clone/features/individual_chat_messaging/widget/sender_message_card.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if(messages[index]['isMe']==true){
          return MyMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
        }
        return SenderMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
    });
  }
}
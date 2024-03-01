import 'package:flutter/material.dart';

import 'package:whatsapp_clone/contants/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageCard({
    Key? key,
    required this.message,
    required this.date,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.width - 45, maxWidth: screenWidth < 900 ? screenWidth -45 : screenWidth *0.5),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Theme.of(context).colorScheme.secondary,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(children: [
            Padding(
                padding: EdgeInsets.only(
              left: 10,
              right: 30,
              bottom: 20,
              top: 5,
            ),
            child: Text(message, style: TextStyle(fontSize: 16),),
            ),
            Positioned(
              bottom: 2,
              right: 10,
              child: Row(
                children: [
                  Text(date, style: const TextStyle(fontSize: 13, color: Colors.white60),),
        
                ],
              ))
          ]),
        ),
      ),
    );

  }
}

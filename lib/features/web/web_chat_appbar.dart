import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/contants/mocking_data.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ['Contact info', 'Select messages', 'Close chat', 'Mute notifications', 'Disappearing messages', 'Clear chat', 'Delete Chat', 'Report', 'Block'];
    final brightness = MediaQuery.of(context).platformBrightness;

    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.70,
      color: brightness == Brightness.dark ? appBarColor: lightNav,
      child: Padding(
        
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
              ),
              SizedBox(width: 10,),
              Text(info[0]['name'].toString(), style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),)
            ],),
            Row(children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
               SizedBox(width: 3,),
               IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
               SizedBox(width: 3,),
               PopupMenuButton(itemBuilder: (BuildContext context){
                return options.map((e) => PopupMenuItem(child: Text(e), value: e,)).toList();
               }),
            ],)
          ],
        ),
      ),
    );
  }
}
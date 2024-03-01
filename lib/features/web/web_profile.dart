import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ['New group', 'New community', 'Starred message', 'Select chats', 'Settings', 'Log out'];
    final brightness = MediaQuery.of(context).platformBrightness;
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: brightness == Brightness.dark ? appBarColor : lightNav,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg')
                    
              ),
           
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.people_outline)),
              SizedBox(width: 3,),
              IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined)),
              SizedBox(width: 3,),
              IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
              SizedBox(width: 3,),
              IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
              SizedBox(width: 3,),
              PopupMenuButton(itemBuilder: (BuildContext context){
                return options.map((e) => PopupMenuItem(child: Text(e), value: e,)).toList();
              })
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/features/individual_chat_messaging/widget/message_list.dart';
import 'package:whatsapp_clone/features/chat_listing/screens/chat_listing.dart';
import 'package:whatsapp_clone/features/web/web_chat_appbar.dart';
import 'package:whatsapp_clone/features/web/web_profile.dart';
import 'package:whatsapp_clone/features/web/web_search_bar.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  TextEditingController chatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(

      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(

            //chat listing
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ChatListing(),
                ],
              ),
            ),
          ),

          //message listing
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: Brightness.dark == brightness ? BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/whatsapp_background.png'),
                    fit: BoxFit.cover,
                    ))
                    :
                    BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/whatsapp_light.jpeg'),
                    fit: BoxFit.cover,
                    )),

            child: Column(children: [
              WebChatAppBar(),
             Expanded(child: MessageList()),
             Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: BoxDecoration(
                color: brightness == Brightness.dark ? appBarColor : lightNav,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                    Expanded(child: TextField(
                      controller: chatController,
                      cursorColor: Colors.white,

                      onChanged: (text){
                        setState(() {
                          
                        });
                      },
                    
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, bottom: 5,left: 10, right: 10),
                        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.07),
                        filled: true,
                        fillColor: brightness == Brightness.dark ? chatBarMessage : whiteColor,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: 'Type a message',
                      ),
                    )),
                    if(chatController.text.isNotEmpty) IconButton(onPressed: (){}, icon: Icon(Icons.send))
                    else IconButton(onPressed: (){}, icon: Icon(Icons.mic))
                  ],
                ),
              ),
             )
            ]),
          )
        ],
      ),
    );
  }
}

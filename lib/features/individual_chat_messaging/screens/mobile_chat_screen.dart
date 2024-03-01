import 'package:flutter/material.dart';

import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/contants/mocking_data.dart';
import 'package:whatsapp_clone/features/individual_chat_messaging/widget/message_list.dart';

class MobileChatScreen extends StatefulWidget {
  final String name;
  final String profileUrl;
  const MobileChatScreen({
    Key? key,
    required this.name,
    required this.profileUrl,
  }) : super(key: key);
  

  @override
  State<MobileChatScreen> createState() => _MobileChatScreenState();
}

class _MobileChatScreenState extends State<MobileChatScreen> {
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final brighness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        
        titleSpacing: 0, // Remove spacing between title and leading widget
        title: ListTile(
          contentPadding: EdgeInsets.only(left: 0),

          //name of the friend
          title: Text(
            widget.name,
            style: TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),
            softWrap: true,
          ),

          //profile picture of friend
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.profileUrl),
          ),
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      body: Column(children: [

        //chats
        Expanded(child: Container(
          decoration: Brightness.dark == brighness ? BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/whatsapp_background.png'),
                    fit: BoxFit.cover,
                    )) :
              BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/whatsapp_light.jpeg'),
                    fit: BoxFit.cover,
                    )),
          child: MessageList())),

        //message input bar
        Container(
          // height: MediaQuery.of(context).size.height * 0.07,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                minLines: 1,
                maxLines: 4,
                controller: messageController,
                cursorColor: Colors.white,
                onChanged: (text) {
                  setState(() {});
                },
                
                decoration: InputDecoration(
                    hintText: 'Messages',
                    filled: true,
                    fillColor: Brightness.dark == brighness ? chatBarMessage : whiteColor,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions_outlined),
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attachment_outlined,
                              size: 20,
                            )),
                        if (messageController.text.isEmpty)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.currency_rupee_rounded,
                                size: 20,
                              )),
                        if (messageController.text.isEmpty)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 20,
                              )),
                      ],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              )),

              //voice message
              if (messageController.text.isEmpty)
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {},
                  ),
                )

                //send message
              else
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                )
            ],
          ),
        )
      ]),
    );
  }
}

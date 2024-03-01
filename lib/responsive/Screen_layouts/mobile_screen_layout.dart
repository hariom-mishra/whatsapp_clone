import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/features/chat_listing/screens/chat_listing.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {

    final options = ['New group', 'New broadcast', 'Linked Devices', 'Starred Message', 'Payments', 'Settings'];

    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 23),),
        
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
          PopupMenuButton(itemBuilder: (BuildContext context){
            return options.map((e) => PopupMenuItem(child: Text(e), value: e,),).toList();
          },
          onSelected: (String choice){
            if(choice == options[0]){
              print(options[0]);
            }else if(choice == options[1]){
              print(options[1]);
            }else if(choice == options[2]){
              print(options[2]);
            }
            else if(choice == options[3]){
              print(options[3]);
            }
            else if(choice == options[4]){
              print(options[4]);
            }
            else if(choice == options[5]){
              print(options[5]);
            }
          },
          ),
        
          
        ],
        bottom: const TabBar(tabs: [
          Tab(text: 'Chats',),
          Tab(text: 'Updates',),
          Tab(text: 'Calls',)
        ],
        labelColor: Colors.green,
        indicatorColor: tabColor,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: TabBarView(
        children: [
          ChatListing(),
          Scaffold(body: Center(child: Text('updates'),),),
          Scaffold(body: Center(child: Text('calls'),),)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green, child: Icon(Icons.add_comment)),
    ));
  }
}
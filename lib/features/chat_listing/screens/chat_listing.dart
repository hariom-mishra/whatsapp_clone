import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/individual_chat_messaging/screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/contants/mocking_data.dart';

class ChatListing extends StatefulWidget {
  const ChatListing({super.key});

  @override
  State<ChatListing> createState() => _ChatListingState();
}

class _ChatListingState extends State<ChatListing> {
  HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {

    //state management
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      buildWhen: (previous, current)=> current is! ActionState,
      listenWhen: (previous, current)=> current is ActionState ,
      listener: (context, state) {

        //for mobile only
        if(state is NavigateToIndividualChatState && MediaQuery.of(context).size.width < 900){
          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MobileChatScreen(name: state.name, profileUrl: state.profileUrl,)));
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: InkWell(
                    onTap: () {
                      homeBloc.add(NavigateToIndividualChatEvent(name: info[index]['name'].toString(), profileUrl: info[index]['profilePic'].toString()));
                    },
                    child: ListTile(
                      //profile picture
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      )),

                      //name
                      title: Text(
                        info[index]['name'].toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      //time
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),

                      //recent message
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
         filled: true,
         fillColor: brightness == Brightness.dark ? appBarColor : lightNav ,
         
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
          ),
          contentPadding: EdgeInsets.all(6),
          prefixIcon: Icon(Icons.search_outlined),
          hintText: 'Search or start new chat',
          hintStyle: TextStyle(fontSize: 15)
        ),
      ),
    );
  }
}
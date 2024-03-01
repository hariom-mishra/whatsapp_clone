import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/Screen_layouts/mobile_screen_layout.dart';
import 'package:whatsapp_clone/responsive/Screen_layouts/web_layout.dart';
import 'package:whatsapp_clone/contants/colors.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: theme.colorScheme.copyWith(
        brightness: Brightness.light,
        background: whiteColor,
        primary: greenColor,
        secondary: whiteColor,
        
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: whiteColor,
        foregroundColor: greenColor,
        iconTheme: IconThemeData(color: blackColor)
      )
      ),

      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark().copyWith(
          background: backgroundColor, // Dark mode background color
          brightness: Brightness.dark,
          primary: messageColor,
          secondary: senderMessageColor,
          // Other color scheme properties...
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundColor,
          foregroundColor: whiteColor,
        )
        // Other dark theme properties...
      ),
      themeMode: ThemeMode.system,
      title: 'Whatsapp clone',
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}

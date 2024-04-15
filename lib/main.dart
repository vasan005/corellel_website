import 'package:corllel/Mobile_Screens/gaming_page.dart';
import 'package:corllel/Mobile_Screens/home_page.dart';
import 'package:corllel/Mobile_Screens/metaworld_mobile.dart';
import 'package:corllel/Round_Animation.dart';
import 'package:corllel/Screens/Gaming_Screen.dart';
import 'package:corllel/Screens/Home_Screen.dart';
import 'package:corllel/Screens/MetaWorld_Screen.dart';
import 'package:corllel/dummy.dart';
import 'package:corllel/responseive_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // Dummy()
          ResponsiveLayout(
              mobileBody: const HomeScreenMobile(),
              desktopBody: const RoundAnimation()),
      routes: {
        '/home': (context) => ResponsiveLayout(
            desktopBody: const HomePageScreen(),
            mobileBody: const HomeScreenMobile()),
        '/metaworld': (context) => ResponsiveLayout(
              desktopBody: const MetaWorldScreen(),
              mobileBody: const MetaWorldMobileScreen(),
            ),
        '/gaming': (context) => ResponsiveLayout(
            desktopBody: const GamingScreenDesktop(),
            mobileBody: const GamingMobile()),
      },
    );
  }
}

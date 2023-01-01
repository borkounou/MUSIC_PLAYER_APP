import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/global_variables.dart';
import 'package:music_app/features/home/screens/bottom_bar_page.dart';
import 'package:music_app/routers.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
// taskkill /F /IM "qemu-system-x86_64.exe" /T

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dawa Zaghawa",
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: const ColorScheme.light(primary: Colors.transparent),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AnimatedSplashScreen(
          splash: Container(
            color: GlobalVariables.greyBackgroundColor,
            child: const Image(
              image: AssetImage('./assets/main_img/music_bg.jpg'),
            ),
          ),
          nextScreen: const BottomBar(),
          duration: 2000,
          pageTransitionType: PageTransitionType.fade),
    );
  }
}

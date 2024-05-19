import 'package:e_commerce_application/cart.dart';
import 'package:e_commerce_application/home.dart';
import 'package:e_commerce_application/profile.dart';
import 'package:e_commerce_application/settings.dart';
import 'package:e_commerce_application/splash.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'basic.dart';
import 'body_screen.dart';
import 'details_home.dart';
import 'details_screen.dart';
import 'end_screen.dart';
import 'lists/homebody.dart';
import 'lists/listcart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        'body_screen': (context) => BodyDetails(),
        'cart': (context) => Cart(),
        'end_screen': (context) => End(),
        'home': (context) => Home(),
        'profile': (context) => ProFile(),
        'about_us': (context) => AboutUs(),
        'setting': (context) => Settings(),
      },

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: basicHome(),
    );
  }
}




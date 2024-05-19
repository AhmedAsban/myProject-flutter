import 'dart:async';
import 'package:e_commerce_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class splash extends StatefulWidget {
  const splash({super.key});
  @override
  State<splash> createState() => _CallState();
}
class _CallState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>DetailsScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 15,),
            Text("مرحبا بكم في متجرنا",style: TextStyle(fontSize: 30,color: kPupColor),)
          ],
        )
      ),
    );
  }
}

import 'package:e_commerce_application/body_screen.dart';
import 'package:e_commerce_application/constants.dart';
import 'package:e_commerce_application/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class End extends StatefulWidget {
  const End({super.key});

  @override
  State<End> createState() => _EndState();
}
Function ?press;
class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple[200],

                ),
                child: Center(child: Text("تمت عملية الدفع بنجاح",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
              SizedBox(height: 150,),

              Container(
                margin: EdgeInsets.only(bottom: 50),
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center (
                  child: Text(" الصفحه الرئسية",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          )
      ),
    );
  }
}

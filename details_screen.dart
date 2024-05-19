
import 'package:e_commerce_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_application/body_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int add=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: BodyDetails(),
    );
  }

  AppBar buildAppBar() {

    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      title:  Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
        
          mainAxisAlignment: MainAxisAlignment.end,
          children:
        
          [
            Container(
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 50,
        
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    children: [
                      IconButton(onPressed: () {
                        setState(() {
                          add++;
                        });
                      }, icon: Icon(Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      ),
                      Text(add.toString(),
                        style: TextStyle(
                            fontSize: 15
                        ),  )
                    ],
                  ),
                )
        
            ) ,

          ],
        ),
      ),


    );
  }
}

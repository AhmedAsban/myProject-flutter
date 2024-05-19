import 'package:e_commerce_application/details_home.dart';
import 'package:e_commerce_application/lists/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home.dart';
import 'lists/catogories.dart';

class Basic extends StatelessWidget {
  const Basic({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(
                child: Stack(
                  children:
                  [
                    Container(
                      decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40)
                          )
                      ),
                      margin: EdgeInsets.only(top: 70),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: ListView.builder(
                          itemCount: Caotogories.length
                          ,itemBuilder: (context,index)=>basicwidget(
                        indexItem: index,
                        catogory: Caotogories[index],
                        press:(){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Home(),
                          )
                          );
                        },
                      )
                      ),
                    )
                  ],
                ))
          ],
        )
    );
  }
}

class basicwidget extends StatelessWidget {
  const basicwidget({
    super.key,
    required this.press,
    required this.catogory, required this.indexItem,
  });

  final VoidCallback press;
  final Catogory catogory;
 final int indexItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),

      ),
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black26
                    )
                  ]
              ),
              height: 240,
            ),
            Positioned(
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                width: double.infinity,
                height: 150,
                child: Image.asset(catogory.image),
              ),
            ),
            SizedBox(width: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Positioned(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  width: double.infinity,
                  height: 150,
                  child: Text(catogory.title),
                ),
              ),
            ),
            Positioned
              (right: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                    ],
                  ),
                )

            )
          ],
        ),
      ),
    );
  }
}


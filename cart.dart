import 'package:e_commerce_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: Text("سلة المشتريات"),
        ),
        body: Column(
          children: [
            cartbuy(),
            cartbuy(),
            cartbuy(),
            cartbuy(),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: double.infinity,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("المجموع :567.87\$",),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40,bottom: 20),
                      color: kBackgroundColor,
                      height: 60,
                      width: 150,
                      child: FloatingActionButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, "end_screen");
                      },
                        backgroundColor: kPupColor,
                        child: Text("ادفع",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: kBackgroundColor),),),
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

class cartbuy extends StatelessWidget {
  const cartbuy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(

          leading:
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 7),
                    blurRadius: 20,
                    color: Colors.black26
                )
              ],
            ),
            child: Image.asset("images/airpod.png"),),
          title: Text("سماعات سلكية"),
          subtitle: Row(
            children: [
              Text("\$64.99",
                style: TextStyle(color: kPupColor),
              ),
              SizedBox(width: 10,),

              Text("2x",),
            ],
          )

      ),
    );
  }
}

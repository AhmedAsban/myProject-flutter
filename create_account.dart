import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          actions: <Widget> [
            Text("انشاء حساب",
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
                Text("انشاء حساب",
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey));
              },

              icon: const Icon(Icons.arrow_forward) ,


            ),
          ]

      ),

      body: SafeArea(

        child: Column(
          children: [
            SizedBox(height: 35,),
            Text("انشاء حساب جديد",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            Text("من فضلك قم بملئ البيانات التالية",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,

            ),),


            SizedBox(height: 30,),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

                border: OutlineInputBorder(

                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                hintText: "ادخل بريدك الالكتروني",
                hintStyle: TextStyle(color:Colors.grey, fontSize: 14,),
                labelText: "البريد الالكتروني",


              ),
            ),

            SizedBox(height: 30,),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

                border: OutlineInputBorder(

                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                hintText: "ادخل كلمة المرور",
                hintStyle: TextStyle(color:Colors.grey, fontSize: 14,),
                labelText: "كلمة المرور ",


              ),
            ),
            SizedBox(height: 30,),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

                border: OutlineInputBorder(

                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                hintText: "ادخل كلمة المرور مرة اخرى",
                hintStyle: TextStyle(color:Colors.grey, fontSize: 14,),
                labelText: "تأكيد كلمة المرور",

              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //padding: EdgeInsets.only(right: 120,left: 120,),

                primary: Colors.deepPurple,
                shape: StadiumBorder(),
              ),
              onPressed: (){} ,

              child: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //
                ),
                child: const Center(child: Text("التالي",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                ),
              ) ,
            ),

            SizedBox(height: 120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("بالاستمرار انت توافق على سياسات التطبيق",
                  style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}

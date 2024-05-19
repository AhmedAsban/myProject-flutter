import 'dart:ffi';
import 'package:e_commerce_application/create_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar  : AppBar(

        actions: <Widget> [

          Text("تسجيل الدخول",
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey)
          ),

          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_forward_rounded) ,

          )
        ],

      ),
      body: Container(

        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,


            children: <Widget>[
              SizedBox(height: 35,),
              Text("مرحباً بعودتك",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              Text("سجل دخولك باستخدام البريد الالكتروني وكلمة المرور",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,

              ),),
              SizedBox(height: 40,),
              const TextField(
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
              const TextField(
                obscureText: true,
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
                  labelText: "كلمة المرور",

                  //floatingLabelAlignment: FloatingLabelAlignment.start
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text("نسيت كلمة المرور",
                      style: TextStyle(color: Colors.grey),
                    )

                  ],
                ),
              ),
              SizedBox(height: 5,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //padding: EdgeInsets.only(right: 120,left: 120,),

                  primary: Colors.deepPurple,
                  shape: StadiumBorder(),
                ),
                onPressed: () => const Create_Account()  ,

                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //
                  ),
                  child: const Center(child: Text("تسجيل الدخول",
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Creat");
                    },
                    child: Text("انشاء حساب",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Text("ليس لديك حساب؟",
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

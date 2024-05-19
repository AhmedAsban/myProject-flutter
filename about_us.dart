
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed("home");

        }, child: Icon(Icons.arrow_back)),
      ),
    );
  }
}

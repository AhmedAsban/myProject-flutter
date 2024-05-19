import 'package:e_commerce_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatefulWidget {
  const BodyDetails({super.key});

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
          children: [
            ProductImage(size: size),
            Describation(size: size),
          ]
      ),
    );
  }
}
//widget for describ
class Describation extends StatelessWidget {
  const Describation({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top:kDefaultPadding +10),
        height: size.width * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding ,right: kDefaultPadding ),
              child: Text("سماعات لا سلكية ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding -10),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),

                ),
              ),
              height: 36,
              width: 60,
              child: change(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: kDefaultPadding
              ),
              child: Text("لوريم لوريم لوريم لوريم لوريم لوريم لوريم لوريم",
                style: TextStyle(fontSize: 20),),
            ),
            colorcart(size: size),
            buttoncart(size: size),
          ],

        ),
      ),
    );
  }
}
//widget for button
class buttoncart extends StatelessWidget {
  const buttoncart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 5),
      height: size.width * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),

      child: Container(
        height: size.width * 0.15,
        width: size.width * 0.5,
        child: FloatingActionButton(onPressed: (){
          Navigator.pushNamed(context, 'cart');
        },backgroundColor: kPupColor,
            child: Text("اضافة الى سلة التسوق",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kBackgroundColor
              ),)),
      ),
    );
  }
}

// class colorcart extends StatelessWidget {
//    int select=0;
//    colorcart({
//     super.key,
//     required this.size,
//
//   });
//   final Size size;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: kDefaultPadding),
//       height: size.width * 0.3,
//           decoration: BoxDecoration(
//           color: kBackgroundColor,
//           borderRadius: BorderRadius.only(
//           topRight: Radius.circular(40),
//          topLeft: Radius.circular(40),
//     ),
//           ),
//       child: Directionality(
//         textDirection: TextDirection.rtl,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Container(
//
//                       padding: EdgeInsets.all(7),
//                       decoration:BoxDecoration(
//
//                         shape: BoxShape.circle,
//                           border: Border.all(color: Colors.purple,)
//                       ),
//                       height: 40,
//                       width: 40,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox( width: 10,),
//                     Container(
//                       decoration:BoxDecoration(
//                           color: Colors.green,
//                         shape: BoxShape.circle,
//                       ),
//                       height: 20,
//                       width: 20,
//                     ),
//                     SizedBox( width: 10,),
//                     Container(
//                       decoration:BoxDecoration(
//                         color: Colors.blue,
//                         shape: BoxShape.circle,
//                       ),
//                       height: 20,
//                       width: 20,
//
//                     ), SizedBox( width: 10,),
//                     Container(
//                       decoration:BoxDecoration(
//                         color: kPupColor,
//                         shape: BoxShape.circle,
//                       ),
//                       height: 20,
//                       width: 20,
//
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox( width: 10,),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                          boxShadow: [
//                           BoxShadow(
//                           offset: Offset(0, 12),
//                         blurRadius: 25,
//                         color: Colors.black26
//                     ),
//                   ],
//                         color: Colors.white,
//                       ),
//
//                       child:
//                       IconButton(onPressed: (){
//                       }, icon:Icon(Icons.add)),
//                     ),
//                     SizedBox(width: 20,),
//                     Text(select.toString()),
//                     SizedBox(width: 20,),
//                     Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                               offset: Offset(0, 12),
//                               blurRadius: 25,
//                               color: Colors.black26
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         color: Colors.white,
//
//                       ),
//                       child:
//                       IconButton(onPressed: (){
//
//                       }, icon:Icon(Icons.minimize_sharp)),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//widget for image
class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:kDefaultPadding),
          height: size.width * 0.8,
          width: double.infinity,
          child:Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: size.width * 0.6 ,
                width: size.width * 0.6 ,

                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Image.asset("images/airpod.png",
                height: size.width * 0.75 ,
                width: size.width * 0.75 , )
            ],
          ),
        )
      ],
    );
  }
}
// widget for colors
class colorcart extends StatefulWidget {
  const colorcart({super.key, required this.size});
  final Size ?size;

  @override
  State<colorcart> createState() => _colorcartState();
}

class _colorcartState extends State<colorcart> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      height: size.width * 0.3,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(

                      padding: EdgeInsets.all(7),
                      decoration:BoxDecoration(

                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple,)
                      ),
                      height: 40,
                      width: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox( width: 10,),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      height: 20,
                      width: 20,
                    ),
                    SizedBox( width: 10,),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      height: 20,
                      width: 20,

                    ), SizedBox( width: 10,),
                    Container(
                      decoration:BoxDecoration(
                        color: kPupColor,
                        shape: BoxShape.circle,
                      ),
                      height: 20,
                      width: 20,

                    ),
                  ],
                ),
              ),
            ),
            SizedBox( width: 10,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 12),
                              blurRadius: 25,
                              color: Colors.black26
                          ),
                        ],
                        color: Colors.white,
                      ),

                      child:
                      IconButton(onPressed: (){
                        setState(() {
                          select++;
                        });
                      }, icon:Icon(Icons.add)),
                    ),
                    SizedBox(width: 20,),
                    Text(select.toString()),
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 12),
                              blurRadius: 25,
                              color: Colors.black26
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white,

                      ),
                      child:
                      IconButton(onPressed: (){
                        setState(() {
                          select--;
                        });
                      }, icon:Icon(Icons.remove)),
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

// widget for change favourite
class change extends StatefulWidget {
  change({super.key});

  @override
  State<change> createState() => _changeState();
}

class _changeState extends State<change> {
  int state=0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                state++;
              });
            },
            icon:  state.isEven ? Icon(Icons.favorite, color: Colors.red,) :Icon(Icons.favorite_border, color: Colors.red,),
          ),
        ],
      ),
    );
  }
}

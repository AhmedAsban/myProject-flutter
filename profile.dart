import 'package:e_commerce_application/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class ProFile extends StatefulWidget {
  const ProFile({super.key});

  @override
  State<ProFile> createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(Home());
        },icon:const Icon(Icons.arrow_forward_ios),),
        title: Text('الحساب الشخصي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,

      ),
      body: SafeArea(
          child: Column(
            children: [
              Container(

                margin: EdgeInsets.only(left: 190.0,top: 40.0),
                // child: Row(
                //   children: [
                //     Text('الحساب الشخصي',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                //     SizedBox(
                //       width: 5.0,
                //     ),
                //     // Icon(Icons.arrow_forward_rounded)
                //     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded)),
                //
                //   ],
                //
                // ),
              ),

              // SizedBox(height: 120,
              //   width: 120,
              //   child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image(image: AssetImage('images/IMG_1814.jpg'),)),
              // ),

              CircleAvatar(

                radius: 60.0,
                backgroundImage: AssetImage('images/IMG_1814.jpg'),
                child: Container(
                  margin: EdgeInsets.only(top: 80.0,left: 70.0),
                  child: CircleAvatar(

                    radius: 30.0,
                    backgroundColor: Colors.grey[200],
                    child: //Icon(Icons.camera_alt_outlined,color: Colors.black38,size: 20.0,)
                    IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined)),
                  ),
                ),

              ),
              const SizedBox(
                height: 10,
              ),
              Text('عبدالله',style: Theme.of(context).textTheme.bodyLarge,),
              Text('bingazya@gmail.com',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(
                height: 20,
              ),
              SizedBox(width: 200,
                child: ElevatedButton(
                  onPressed:  (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,side: BorderSide.none,shape: StadiumBorder()),
                  child: const Text('تعديل',style: TextStyle(color: Colors.white),),

                ),
              ),
              const SizedBox(height: 30,),

              const SizedBox(height: 10,),

              //MENEU
              ListTile(
                  leading: Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurple,
                    ),
                    child: Icon(Icons.person_outline_outlined,color: Colors.white,),
                  ),
                  title: Text('حسابي',style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container(
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white10,
                    ),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios),),

                  )
              ),
              ListTile(
                  leading: Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurple,
                    ),
                    child: Icon(Icons.settings_outlined,color: Colors.white,),
                  ),
                  title: Text('الاعدادات',style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container(
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white10,
                    ),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios),),
                  )

              ),
              ListTile(
                  leading: Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurple,
                    ),
                    child: Icon(Icons.contact_support_outlined,color: Colors.white,),
                  ),
                  title: Text('مساعدة',style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container(
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white10,
                    ),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios),),
                  )

              ),
              ListTile(
                  leading: Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurple,
                    ),
                    child: Icon(Icons.exit_to_app,color: Colors.white,),
                  ),
                  title: Text('تسجيل الخروج',style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container(
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white10,
                    ),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios),),
                  )

              )


              // Container(
              //   width: 300.0,
              //   height: 65.0,
              //   color: Colors. black26,
              //   child: Row(
              //     children: [
              //       Text('حسابي',style:TextStyle( fontSize: 20.0),),
              //
              //       Container(
              //
              //         child: Icon(Icons.person_outline_outlined,color: Colors.indigo,size: 40.0,),
              //         margin: EdgeInsets.only(left: 200.0),
              //
              //       ),
              //
              //     ],
              //   ),
              // )

            ],
          )

      ),


    );
  }
}

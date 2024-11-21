import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/fistScreen.dart';
import 'package:newproject/secondScreen.dart';
import 'package:newproject/thirdScreen.dart';

import 'fourthScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int  index=0;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(

        backgroundColor:  index==0
            ?
        Colors.blue:
        index==1
            ?
        Colors.lightBlue
            :
        index==2
            ?
        Colors.amber
            :
        index==3
            ?
        Colors.purpleAccent.shade700
            :
        Colors.blue,

        title: Text(
          "home",
          style: TextStyle(
            height: size.height*0.023,
            color: Colors.white

          ),


        ),


      ),


      body:  Container(
        height: size.height*1,
        width: size.width*1,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // controller: ,
            children: [

               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Container(
                   height: size.height*0.07,
                   color: index==0
                       ?
                   Colors.blue:
                   index==1
                       ?
                   Colors.lightBlue
                       :
                   index==2
                       ?
                   Colors.amber
                       :
                   index==3
                       ?
                   Colors.purpleAccent.shade700
                       :
                   Colors.blue


                   ,

                   width: size.width,

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             index=0;
                           });
                         },
                         child: Padding(
                           padding:  EdgeInsets.only(left: size.width*0.03),
                           child: Container(


                      height: size.height*0.07,
                             width: size.width*0.23,
                             child: Column(
                               children: [
                                 Text("First",
                                   style: TextStyle(
                                       color: Colors.white
                                   ),
                                 ),
                                 SizedBox(
                                   height: size.height*0.01,
                                 ),
                                 index== 0
                                     ?
                                 Container(
                                   height: size.height*0.007,
                                   width: size.width*0.3,
                                   decoration: BoxDecoration(
                                       color: Colors.white


                                   ),
                                 )
                                     :
                                 SizedBox()
                               ],
                             ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             index=1;
                           });
                         },
                         child: Container(


                           height: size.height*0.07,
                           width: size.width*0.23,
                           child: Column(
                             children: [
                               Text("second",
                                 style: TextStyle(
                                     color: Colors.white
                                 ),
                               ),
                               SizedBox(
                                 height: size.height*0.01,
                               ),
                               index== 1
                                   ?
                               Container(
                                 height: size.height*0.007,
                                 width: size.width*0.3,
                                 decoration: BoxDecoration(
                                     color: Colors.white


                                 ),
                               )
                                   :
                               SizedBox()
                             ],
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             index=2;
                           });
                         },
                         child: Container(


                           height: size.height*0.07,
                           width: size.width*0.23,
                           child: Column(
                             children: [
                               Text("third",
                                 style: TextStyle(
                                     color: Colors.white
                                 ),
                               ),
                               SizedBox(
                                 height: size.height*0.01,
                               ),
                               index== 2
                                   ?
                               Container(
                                 height: size.height*0.007,
                                 width: size.width*0.3,
                                 decoration: BoxDecoration(
                                     color: Colors.white


                                 ),
                               )
                                   :
                               SizedBox()
                             ],
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             index=3;
                           });
                         },
                         child: Container(


                           height: size.height*0.07,
                           width: size.width*0.23,
                           child: Column(
                             children: [
                               Text("fourth",
                                 style: TextStyle(
                                   color: Colors.white
                                 ),



                               ),
                               SizedBox(
                                 height: size.height*0.01,
                               ),
                                index== 3
                               ?
                                Container(
                                  height: size.height*0.007,
                                  width: size.width*0.3,
                                  decoration: BoxDecoration(
                                      color: Colors.white


                                  ),
                                )
                                    :
                                    SizedBox()
                             ],
                           ),
                         ),
                       ),



                     ],
                   ),
                 ),
               ),

              Container(
                    color:   index==0
                        ?
                    Colors.blue.shade200:
                    index==1
                        ?
                    Colors.lightBlue.shade200
                        :
                    index==2
                        ?
                    Colors.amber.shade200
                        :
                    index==3
                        ?
                    Colors.purpleAccent.shade200
                        :
                    Colors.blue.shade200


                  ,
                  height: size.height*0.8,
                  child: index ==0
                      ?

                  FirstScreen()
                      :
                  index ==1
                      ?
                  second()
                      :
                  index ==2
                      ?
                  ThirdScreen()
                      :
                  fourth()

              )

            ],
          ),
        ),
      ),
       floatingActionButton: index ==0? Padding(

   padding:  EdgeInsets.only(left: size.width*0.07),
   child: SizedBox(
     height: size.height*0.065,
     width: size.width,
     child: ElevatedButton(
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.purple,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(size.height*0.03))
             )
           ),
         onPressed: (){},child: Text(
        "Save",
       style: TextStyle(
         color: Colors.white,

       ),
     ) ),
   ),
 )  :
      const SizedBox(),
    );
  }
}

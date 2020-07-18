import 'dart:ffi';

import 'package:flutter/material.dart';

class HealthWallet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HealthWalletShopListState();
  }
}

class _HealthWalletShopListState extends State<HealthWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/BackArrow.png",
                    fit: BoxFit.cover,
                    height: 30,
                  ),

                  Text('Health Wallet',style: TextStyle(
                      fontSize: 15
                  ),)
                ],
              ),
            ),
          ),
          // leading: Image.asset('assets/BackArrow.png'), // you can put Icon as well, it accepts any widget.
          // title: Text ("Your Title"),
          actions: [
            Image.asset("assets/userMale.png",height: 28,),
            Image.asset("assets/profileImage.png"),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Mark Samuels",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "\n27 years old",
                      style: TextStyle(
                        fontSize:10,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "\nNoida",
                      style: TextStyle(
                        fontSize:10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),

      body:   Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            // top icons
           Container(
             decoration: BoxDecoration(
                 gradient: LinearGradient(colors: [
                   Color.fromRGBO(56, 103, 180, 1),
                   Color.fromRGBO(15, 148, 180, 1)
                 ])),
             child: Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Container(

                       width: MediaQuery.of(context).size.width *0.20,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/weight.png",height: 20,),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Weight",style: TextStyle(color: Colors.white,fontSize: 10),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(

                       width: MediaQuery.of(context).size.width *0.22,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/thermometer.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Temperature",style: TextStyle(color: Colors.white,fontSize: 10)),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width *0.30,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/lungs.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Respiratory rate",style: TextStyle(color: Colors.white,fontSize: 10)),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width *0.25,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/bloodSample.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Blood group",style: TextStyle(color: Colors.white,fontSize: 10)),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               //  _____________vartical line start________________
                 Container(
                   width:MediaQuery.of(context).size.width,
                   height: 1,
                   color: Colors.blue,
                 ),

                 //  _____________vartical line End________________

                 Row(
                   children: <Widget>[
                     Container(

                       width: MediaQuery.of(context).size.width *0.20,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/ruler.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Height",style: TextStyle(color: Colors.white,fontSize: 10),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(

                       width: MediaQuery.of(context).size.width *0.22,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/heartPulse.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Pulse rate",style: TextStyle(color: Colors.white,fontSize: 10)),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width *0.30,

                       child: Row(
                         children: <Widget>[
                           Image.asset("assets/hygrometer.png",height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Text("Blood pressure",style: TextStyle(color: Colors.white,fontSize: 10)),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 1,
                       height: 40,
                       color: Colors.blue,
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width *0.25,

                       child: RaisedButton(
                         color: Colors.white,
                         textColor: Colors.blue,
                         onPressed: (){},
                         child: Text("Edit \n Details",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                       )
                     ),
                   ],
                 ),


               ],
             ),
           ),

            Text("HEALTH DETAILS",style: TextStyle(
                color: Colors.black,fontSize: 18
            ),),
            // cards container
         Container(
           child: Flexible(
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Flexible(
                   flex: 1,
                   child: Row(
                     children: <Widget>[
                       Flexible(
                         child: Container(

                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Center(
                             child: Column(
                               children: <Widget>[
                                 Image.asset("assets/inquiry.png",height: 35),
                                 Text("current problem story\n (photos/text/videos)",style: TextStyle(
                                     color: Colors.blueGrey,
                                     fontSize: 10
                                 ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Flexible(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Center(
                             child: Column(
                               children: <Widget>[
                                 Image.asset("assets/hospital+.png",height: 35),
                                 Text("other medical problem(s)\n & family history", textAlign: TextAlign.center, style: TextStyle(
                                     color: Colors.blueGrey,
                                     fontSize: 10
                                 ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 ///////////////
                 Flexible(
                    flex: 1,
                   
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Center(
                             child: Column(
                               children: <Widget>[
                                 Image.asset("assets/diabetes.png",height: 35),
                                 Text("Blood sugar \n log", textAlign: TextAlign.center, style: TextStyle(
                                     color: Colors.blueGrey,
                                     fontSize: 10
                                 ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),

                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Flexible(
                             child: Column(
                               children: <Widget>[
                                 Image.asset("assets/labItems.png",height: 35,),
                                 Text("Blood,Urine,X-ray,\n CT-scan,MRI Reports", textAlign: TextAlign.center , style: TextStyle(
                                     color: Colors.blueGrey,
                                     fontSize: 10
                                 ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Flexible(
                     flex: 1,
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/hospitalRoom.png",height: 35),
                               Text("Last hospital admission\nand discharge summary", textAlign: TextAlign.center , style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),

                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/ongoingMedicine.png",height: 35),
                               Text("ongoing Medicine & allergy\n to any medicine and food", textAlign: TextAlign.center,  style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 ////////////////
                 Flexible(
                                                        flex: 1,
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(

                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/wine.png",height: 35),
                               Text("Smoking,tobbaco,\n alcohal & other habit", textAlign: TextAlign.center , style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),

                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/microscope.png",height: 35),
                               Text("Biopsy \n reports", textAlign: TextAlign.center , style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 ///////////////
                 Flexible(
                                                        flex: 1,
                   child: Row(
                     children: <Widget>[
                       Expanded(

                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1, //                   <--- border width here
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/pillReminder.png",height: 35),
                               Text("medical \n reminder", textAlign: TextAlign.center ,style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),

                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,
                               width: 1,
                             ),),

                           width: MediaQuery.of(context).size.width *0.5,
                           child: Column(
                             children: <Widget>[
                               Image.asset("assets/training.png",height: 35,),
                               Text("doctor's \n E-prescription", textAlign: TextAlign.center , style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 10
                               ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
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

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
      body:   Container(
        height: MediaQuery.of(context).size.height,

        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(

                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(56, 103, 180, 1),
                      Color.fromRGBO(15, 148, 180, 1)
                    ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ),
              new Container(
                height: 1.0,
                color: Colors.blue,
              ),

              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(56, 103, 180, 1),
                      Color.fromRGBO(15, 148, 180, 1)
                    ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    new Wrap(
                      spacing: 0.0, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      direction: Axis.horizontal, // m
                      // ain axis (rows or columns)
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width *0.20,
                          child: Row(
                            children: <Widget>[
                              Image.asset("assets/ruler.png",height: 20),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Text("Height",style: TextStyle(color: Colors.white,fontSize: 10)),
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
                              Image.asset("assets/hygrometer.png",height: 20,),
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
                          width: MediaQuery.of(context).size.width *0.24,


                          child: Row(
                            children: <Widget>[

                              Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                    color:Colors.white,

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(20,10,20,10),
                                    child: Text('Edit  \n Details', textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontSize: 10),),
                                  )),

                            ],
                          ),
                        ),


                      ],
                    )

                  ],
                ),
              ),
              new Container(
                height: 1.0,
                color: Colors.grey[400],
              ),

              Text("HEALTH DETAILS",style: TextStyle(
                  color: Colors.black,fontSize: 18
              ),),

              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                          ]
                      ),
                      TableRow(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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

                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                          ]
                      ),
                      TableRow(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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

                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                          ]
                      ),
                      TableRow(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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

                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset("assets/microscope.png",height: 35),
                                    Text("Biopsy reports", textAlign: TextAlign.center , style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 10
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),   TableRow(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset("assets/pillReminder.png",height: 35),
                                    Text("medical reminder", textAlign: TextAlign.center ,style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 10
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Container(
                              height: MediaQuery.of(context).size.height*0.13,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,
                                  width: 1, //                   <--- border width here
                                ),),

                              width: MediaQuery.of(context).size.width *0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset("assets/training.png",height: 35,),
                                    Text("doctor's E-prescription", textAlign: TextAlign.center , style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 10
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),

                    ],
                  ),
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
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
                    Row(
                      children: <Widget>[
                        FlutterLogo(),
                        Text("Text"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FlutterLogo(),
                        Text("Text"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FlutterLogo(),
                        Text("Text"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FlutterLogo(),
                        Text("Text"),
                      ],
                    ),
                  ],
                ),
              ),
              new Container(
                height: 1.0,
                color: Colors.black,
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
                      spacing: 40.0, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      direction: Axis.horizontal, // m
                      // ain axis (rows or columns)
                      children: <Widget>[
                      Row(
                        children: <Widget>[
                          FlutterLogo(),
                          Text("Text"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlutterLogo(),
                          Text("Text"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlutterLogo(),
                          Text("Text"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlutterLogo(),
                          Text("Text"),
                        ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 120,

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
                            Image.asset("assets/inquiry.png"),
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
                    height: 120,
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
                            Image.asset("assets/hospital+.png"),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 120,
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
                            Image.asset("assets/diabetes.png"),
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
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/labItems.png"),
                          Text("Blood,Urine,X-ray,\n CT-scan,MRI Reports", textAlign: TextAlign.center , style: TextStyle(
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/hospitalRoom.png"),
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
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/ongoingMedicine.png"),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 120,

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/wine.png"),
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
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/microscope.png"),
                          Text("Biopsy reports", textAlign: TextAlign.center , style: TextStyle(
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/pillReminder.png"),
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
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/training.png"),
                          Text("doctor's E-prescription", textAlign: TextAlign.center , style: TextStyle(
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

            ],
          ),
        ),
      ),
    );
  }
}
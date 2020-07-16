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
        height: MediaQuery.of(context).size.height *1,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                    Container(
                    height: 120,

                    decoration: BoxDecoration(
                      border: Border.all(
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
                                color: Colors.blue
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
                      border: Border.all(
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
                                color: Colors.blue
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
                      border: Border.all(
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
                                color: Colors.blue
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
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/labItems.png"),
                          Text("Blood,Urine,X-ray,\n CT-scan,MRI Reports", textAlign: TextAlign.center , style: TextStyle(
                              color: Colors.blue
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
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/hospitalRoom.png"),
                          Text("Last hospital admission\nand discharge summary", textAlign: TextAlign.center , style: TextStyle(
                              color: Colors.blue
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),

                    Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1, //
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/ongoingMedicine.png"),
                          Text("ongoing Medicine & allergy\n to any medicine and food", textAlign: TextAlign.center,  style: TextStyle(
                              color: Colors.blue
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
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/wine.png"),
                          Text("Smoking,tobbaco,\n alcohal & other habit", textAlign: TextAlign.center , style: TextStyle(
                              color: Colors.blue
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),

                    Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/microscope.png"),
                          Text("Biopsy reports", textAlign: TextAlign.center , style: TextStyle(
                              color: Colors.blue
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
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/pillReminder.png"),
                          Text("medical reminder", textAlign: TextAlign.center ,style: TextStyle(
                              color: Colors.blue
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),

                    Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1, //                   <--- border width here
                      ),),

                    width: MediaQuery.of(context).size.width *0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/training.png"),
                          Text("doctor's E-prescription", textAlign: TextAlign.center , style: TextStyle(
                              color: Colors.blue
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

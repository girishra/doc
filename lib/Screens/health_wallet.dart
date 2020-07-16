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
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
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
                Container(
                    height: 80,
                    child: VerticalDivider(color: Colors.grey[400])),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/hospital+.png"),
                      Text("other medical problem(s)\n & family history",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/diabetes.png"),
                      Text("Blood sugar log",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    child: VerticalDivider(color: Colors.grey[400])),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/labItems.png"),
                      Text("Blood,Urine,X-ray,\n CT-scan,MRI Reports",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/microscope.png"),
                      Text("Biopsy reports",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    child: VerticalDivider(color: Colors.grey[400])),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/ongoingMedicine.png"),
                      Text("ongoing Medicine & allergy\n to any medicine and food",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/wine.png"),
                      Text("Smoking,tobbaco,\n alcohal & other habit",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    child: VerticalDivider(color: Colors.grey[400])),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/hospitalRoom.png"),
                      Text("Last hospital admission\nand discharge summary",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/pillReminder.png"),
                      Text("medical reminder",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    child: VerticalDivider(color: Colors.grey[400])),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/tarining.png"),
                      Text("doctor's E-prescription",style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}

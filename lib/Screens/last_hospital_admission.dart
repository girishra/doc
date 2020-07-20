import 'package:flutter/material.dart';

class LastHospital extends StatefulWidget {
  @override
  _LastHospitalOngoingMedicineState createState() => _LastHospitalOngoingMedicineState();
}

class _LastHospitalOngoingMedicineState extends State<LastHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
          automaticallyImplyLeading: false,
           iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
          title: Container(
            
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                     Navigator.pop(context);
                  },
                                  child: Image.asset(
                    "assets/BackArrow.png",
                    fit: BoxFit.cover,
                    height: 30,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Last Hospital admission",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
          backgroundColor:Color.fromRGBO(56, 103, 180, 1),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(220, 220, 220, 1),
            padding: EdgeInsets.all(15.0),
            child: Table(
              // border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text(
                    '  Last\nHospital',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(54, 95, 155, 1),
                    ),
                  ),
                  Text('  Blood\nTransfusion',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                  Text('  Total unit\nTransfusion',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                  Text('Attached\n photos',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                 
                ]),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 19, 0),
                child: Container(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, i) {
                        return GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "  Akash\nHospital",
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "No",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "N/A",
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                        Image.asset("assets/corona.png"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(56, 103, 180, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Add Details",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

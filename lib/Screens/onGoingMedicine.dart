import 'package:flutter/material.dart';

class OngoingMedicine extends StatefulWidget {
  @override
  _OngoingMedicineState createState() => _OngoingMedicineState();
}

class _OngoingMedicineState extends State<OngoingMedicine> {
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
                        text: "OnGoing Medicine",
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
            padding: EdgeInsets.all(20.0),
            child: Table(
              // border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text(
                    'Brand \nName',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(54, 95, 155, 1),
                    ),
                  ),
                  Text('Generic \n name',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                  Text('Dosage\n(in mg)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                  Text('  Times \nper day',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(54, 95, 155, 1),
                      )),
                  Text('  Duration\n(No.of days)',
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
                                            "Crocin",
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
                                              "pcm",
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
                                            "5 mg",
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "3 times",
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "30 days",
                                          ),
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

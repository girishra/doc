import 'package:flutter/material.dart';

class BiopsyReports extends StatefulWidget {
  @override
  _OngoingMedicineState createState() => _OngoingMedicineState();
}

class _OngoingMedicineState extends State<BiopsyReports> {
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
                                  child: Icon(Icons.close,color: Colors.grey,)
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Biopsy Reports",
                        style: TextStyle(
                          fontSize: 18,
                        color: Color.fromRGBO(56, 103, 180, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
          backgroundColor: Color.fromRGBO(220, 220, 220, 1),
        ),
      ),
      body: Stack(
        children: <Widget>[
          
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 19, 0),
                child: Container(
                  child: ListView.builder(
                      itemCount: 1,
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
                                          Text('18-02-2020',style: TextStyle(
                                            color: Colors.grey
                                          ),),
                                          Text(
                                            "Dentist-Clara oddinng",
                                          ),
                                        ],
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: Column(
                                      //     children: <Widget>[
                                      //       SizedBox(
                                      //         height: 5,
                                      //       ),
                                      //       Text(
                                      //         "pcm",
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      // Column(
                                      //   children: <Widget>[
                                      //     SizedBox(
                                      //       height: 5,
                                      //     ),
                                      //     Text(
                                      //       "5 mg",
                                      //     ),
                                      //   ],
                                      // ),
                                      // Column(
                                      //   children: <Widget>[
                                      //     SizedBox(
                                      //       height: 5,
                                      //     ),
                                      //     Text(
                                      //       "3 times",
                                      //     ),
                                      //   ],
                                      // ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Icon(Icons.file_download,
                                          color: Colors.blueAccent,),
                                          Text(
                                            "Download",style: TextStyle(color: Colors.blueAccent),
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
                        "Add a Report",
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

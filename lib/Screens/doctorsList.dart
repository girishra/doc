import 'package:flutter/material.dart';

class DocList extends StatefulWidget {


  @override
  _DocListState createState() => _DocListState();
}

class _DocListState extends State<DocList> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(62.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromRGBO(56, 103, 180, 1),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    GestureDetector(
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child: Image.asset(
                        "assets/BackArrow.png",
                        fit: BoxFit.cover,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Recent Call',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Your Call history',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ),
        ),
        body: SingleChildScrollView(
          child: new Container(
//          padding: new EdgeInsets.all(32.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),
                    ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                          child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),


                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Doctor Name"),

                            Row(
                              children: <Widget>[
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )



                    ),

                  ],
                ),
              )
          ),
        ),
      )
    );
  }
}

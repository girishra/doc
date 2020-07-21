import 'package:flutter/material.dart';

class NewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.grey[200],
        height: mq.size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: mq.size.height * 0.2,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: mq.size.height * 0.18,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              20,
                            ),
                            bottomRight: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                            Text(
                              'Edit Details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),

                         Column(
                           children: <Widget>[
                            Icon(Icons.supervised_user_circle),
                             Text("///",style: TextStyle(color: Colors.white),),
                           ],
                         )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.size.height * 0.01,
                      )
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15,0,15,10),
              child: SingleChildScrollView(
                child: Container(
                    color: Colors.white,

                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Full Name",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Country",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Email",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Phone Number",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Address 1",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Address 2",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Land Mark (Optional)",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "City",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:   Color.fromARGB(0, 0, 0, 100),
                                hintText: "Pin Code",hintStyle: TextStyle(
                                color: Colors.grey
                            )),
                          ),
                          SizedBox(height: 20,),

                          Container(
                            width: 180,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
                              child: Text("Save Details"),
                              textColor: Colors.white,
                              padding: EdgeInsets.all(16),
                              onPressed: () {

                              },
                              color: Colors.blue,
                            ),
                          ),

                        ],
                      ),
                    )

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

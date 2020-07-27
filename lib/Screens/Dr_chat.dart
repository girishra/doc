import 'package:flutter/material.dart';

class DoctorChat extends StatefulWidget {
  @override
  _DoctorChatState createState() => _DoctorChatState();
}

class _DoctorChatState extends State<DoctorChat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.0, -0.6),
                        end: Alignment(1.0, 2.0),
                        colors: [
                      Color.fromRGBO(56, 103, 180, 1),
                      Color.fromRGBO(15, 148, 180, 1)
                    ])),
                width: MediaQuery.of(context).size.width*0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Icon(Icons.menu,color: Colors.white,size: 40,),


                  Container(child: Column(
                    children: <Widget>[
                      Icon(Icons.notifications,color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(Icons.settings,color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(Icons.speaker_notes,color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(Icons.date_range,color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(Icons.refresh,color: Colors.white,),
                    ],
                  ),),


                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Column(
                        children: <Widget>[
                          Icon(Icons.person,color: Colors.white,),
                          Text("John \n williams",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                        ],
                      ),),
                    ),

                  ],),
              ),

              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.black12,
                      child: ListTile(
                        title: Text("Dr. Sherley Abraham",style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("call duration 11:02 mins",style: TextStyle(color: Colors.black54),),

                        trailing: Icon(Icons.videocam)
                      ) ,
                    )
                  ],
                ),

              )

            ],

          ),
        ),
      ),
    );
  }
}

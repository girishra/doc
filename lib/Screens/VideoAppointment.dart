import 'package:flutter/material.dart';

class VAppointment extends StatefulWidget {
  @override
  _VAppointmentState createState() => _VAppointmentState();
}

class _VAppointmentState extends State<VAppointment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(56, 103, 180, 1),
          centerTitle: true,
          title: Text("Video Appointment"),
        ),

        body: Container(
          child: Column(
            children: <Widget>[
              Card(
                child:Column(
                  children: <Widget>[
                    ListTile(
                      leading:Icon(Icons.supervised_user_circle,size: 60,) ,
                      title: Column(
                        children: <Widget>[
                          Text("Dr. Sukhivander Singh",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("It is a long established fact \n that a reader will be distracte",style: TextStyle(fontWeight:FontWeight.w200),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Your Appointment Has Started"),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        width: 350,
                        child: RaisedButton(
                          color: Color.fromRGBO(56, 103, 180, 1),
                          onPressed: (){},
                          child: Text("START APPOINTMENT",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                       Container(
                         height: 40,
                         width: 150,
                         color: Colors.grey,
                         child: Center(child: Text("Date: 6 May 2020")),
                       ),
                        Container(
                          height: 40,
                          width: 150,
                          color: Colors.grey,
                          child: Center(child: Text("Time: 9:00 PM")),
                        ),


                      ],

                    ),
                    SizedBox(height: 20,)

                  ],
                ) ,
              )
            ],
          ),
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.asset('assets/videoCall.png'),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.volume_off,size: 40,color: Colors.white,),
                      SizedBox(width: 20,),
                      Icon(Icons.apps,size: 40,color: Colors.white,),
                      SizedBox(width: 20,),
                      Icon(Icons.videocam,size: 40,color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
          ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,80),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      50,
                    ),

                  ),
                ),
              height: 60,
              width: 60,
//              color: Colors.red,
                child: Icon(Icons.call_end,color: Colors.white,)),

          ),
        ),


          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black54,
              child: ListTile(
                title: Text("Dr. Sherly Abraham",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                trailing: Icon(Icons.menu,color: Colors.white,size: 25,),
              ),
            ),

          )

        ],
      ),

    );
  }
}

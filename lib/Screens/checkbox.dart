import 'package:flutter/material.dart';

class CheckBoxx extends StatefulWidget {
  @override
  _CheckBoxxState createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  var floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading:Icon(Icons.cancel) ,
                  title: Container(
                      width: 10,
                      child: Text("Other Medical Problem(s) \n & Family History",style: TextStyle(fontSize: 22,color: Colors.blue),)) ,
                ),

                SizedBox(height: 20),

                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for medical problems'
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40,),
                Text("Heart"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height *0.18,
                ),
                SizedBox(height: 20,),
                Text("Endocrinology"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height *0.12,
                ),

                SizedBox(height: 20,),
                Text("Brain"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height *0.12,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}


//CheckboxListTile(
//title: Text("check"),
//secondary: Icon(Icons.beach_access),
//controlAffinity: ListTileControlAffinity.platform,
//value: monVal,
//onChanged: (bool vale) {
//setState(() {
//monVal = monVal;
//});
//} ,
//)
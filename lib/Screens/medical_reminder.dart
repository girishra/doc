import 'package:flutter/material.dart';

class MedicalReminder extends StatefulWidget {
  @override
  _CheckBoxxState createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<MedicalReminder> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool _isChecked = true;
  String _currText = '';
   List<String> text = ["Hypertension(High BP)", "Angina", "Stent"];
    List<String> text1 = ["Diabetes Type 1","Diabetes Type 2"];
     List<String> text2 = ["Seizures", "Migraine"];
       List<String> text3 = ["Skin Disease 1", "Skin Disease 2"];
  var floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,30,10,0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                     Navigator.pop(context);
                  },
                                  child: ListTile(
                    leading:Icon(Icons.close,color: Colors.grey,) ,
                    title: Container(
                        width: 10,
                        child: Text("Medical Reminder",style: TextStyle(fontSize: 18, color:  Color.fromRGBO(56, 103, 180, 1),),)) ,
                  ),
                ),
                
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/2,
                  child: Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               Expanded(
                                                                child: TextFormField(
              style: TextStyle(
                color: Colors.grey
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey[200])),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey[300])),
                  filled: true,
                  fillColor:   Color.fromARGB(0, 0, 0, 1),
                  hintText: "Name of the medicine",hintStyle: TextStyle(
                    color: Colors.grey
                  )),
              // controller: _phoneController,
            ),
                               ),
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                                                child: TextFormField(
              style: TextStyle(
                color: Colors.grey
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey[200])),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey[300])),
                  filled: true,
                  fillColor:   Color.fromARGB(0, 0, 0, 1),
                  hintText: "label(Optional)",hintStyle: TextStyle(
                    color: Colors.grey
                  )),
              // controller: _phoneController,
            ),
                               ),
                               
                              ],
                            ),
                          ),
                         
                         Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                               Column(
                                 children: <Widget>[
                                   Container(
                                       decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                     width: 70,
                                     height: 50,
                                     child:Icon(Icons.add)),
                                     Container(
                                       child: Text("  Add an alarm \n for first dosage"),
                                     )
                                 ],
                               ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                     decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                         width: 70,
                                     height: 50,
                                       child:Icon(Icons.add)),
                                       Container(
                                       child: Text("  Add an alarm\n for first dosage"),
                                     )

                                  ],
                                ),
                              ],
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                               Column(
                                 children: <Widget>[
                                   Container(
                                       decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                     width: 70,
                                     height: 50,
                                     child:Icon(Icons.add)),
                                     Container(
                                       child: Text("  Add an alarm \n for first dosage"),
                                     )
                                 ],
                               ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                     decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                         width: 70,
                                     height: 50,
                                      child:Icon(Icons.add)),
                                       Container(
                                       child: Text("  Add an alarm \n for first dosage"),
                                     )

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                ),
               
                 Expanded(
                                    child: Padding(
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
                          "Remind me",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                ),
              ),
                 )


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
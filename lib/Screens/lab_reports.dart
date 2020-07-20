import 'package:flutter/material.dart';

class LabReports extends StatefulWidget {
  @override
  _CheckBoxxState createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<LabReports> {
   List<String> _locations = ['Item1', 'Item2', 'Item3']; // Option 2
  String _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(56, 103, 180, 1),
        Color.fromRGBO(15, 148, 180, 1)
      ])),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                     Navigator.pop(context);
                  },
                                  child: ListTile(
                    leading:Image.asset(
                    "assets/BackArrow.png",
                    fit: BoxFit.cover,
                    height: 30,
                  color: Colors.white,) ,
                    title: Container(
                        width: 10,
                        child: Text("Lab Reports",style: TextStyle(fontSize: 18, color:  Colors.white),)) ,
                  ),
                ),
               
               SizedBox(height: 20,),
                Container(
                  // color: Colors.white,
                  height: MediaQuery.of(context).size.height/3,
                  child:Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Add a lab result record"),
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("This Document is a"),
                               
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                               Expanded(
                                    child: DropdownButtonFormField(
                    
                     style: TextStyle(color: Colors.black,fontSize: 16),
                    iconEnabledColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey[200])),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey[300])),
                      filled: true,
                      fillColor:   Color.fromARGB(0, 0, 0, 1),
                      hintText: "Item1",hintStyle: TextStyle(
                        color: Colors.black
                      )),
                    hint: Text(
                      '',
                      style: TextStyle(color: Colors.black),
                    ), 
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      print(_selectedLocation);
                      return DropdownMenuItem(
                        child: new Text(
                          location,
                        ),
                        value: location,
                      );
                    }).toList(),
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
                               Container(
                                   decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                 width: 70,
                                 height: 50,
                                 child: Image.asset("assets/attach.png")),
                                Container(
                                 decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey[500],
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
                                     width: 70,
                                 height: 50,
                                  child: Image.asset("assets/attach.png")),
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
                          "Save Report",
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
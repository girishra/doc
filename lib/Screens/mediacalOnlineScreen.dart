import 'package:flutter/material.dart';

class MedicalOnline extends StatefulWidget {
  @override
  _MedicalOnlineState createState() => _MedicalOnlineState();
}

class _MedicalOnlineState extends State<MedicalOnline> {
  @override
  Widget build(BuildContext context) {


    String radioItem = '';
    String dropdownValue = 'One';

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: ListTile(
              leading: Icon(Icons.cancel),
              title: Text("Order Medicine online ",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0,80,0,40),
            child: Align(
              child: Card(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title:Text("Medicare Pharmacy",style: TextStyle(fontWeight: FontWeight.bold),) ,
                        subtitle: Text("Shop No 23/1, Sector 63, Noida, Uttar Pradesh"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,30,10,10),
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
                              fillColor:   Colors.black12,
                              hintText: "Upload description ",hintStyle: TextStyle(
                              color: Colors.grey
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
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
                              fillColor:   Colors.black12,
                              hintText: "Delivery address ",hintStyle: TextStyle(
                              color: Colors.grey
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
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
                              fillColor:   Colors.black12,
                              hintText: "_---___---____-",hintStyle: TextStyle(
                              color: Colors.grey
                          )),
                        ),
                      ),

                      Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: (){},
                            color: Colors.black12,
                            child: Text("Age"),
                          ),
                          SizedBox(width: 10,),
                          RaisedButton(
                            onPressed: (){},
                            color: Colors.black12,
                            child: Text("Age"),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Container(
                            width: 40,
                            child: RadioListTile(
                              groupValue: radioItem,
                              title: Text('Male'),
                              value: 'Male',
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val;
                                });
                              },
                            ),
                          ),

                          Container(
                            width: 40,
                            child: RadioListTile(
                              groupValue: radioItem,
                              title: Text('Female'),
                              value: 'Female',
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: 40,
                            child: RadioListTile(
                              groupValue: radioItem,
                              title: Text('Others'),
                              value: 'Others',
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val;
                                });
                              },
                            ),
                          ),

                          Text('$radioItem', style: TextStyle(fontSize: 20),)
                        ],
                      )

                    ],
                  ),

                ),
              ) ,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
              DropdownButton<String>(
               value: dropdownValue,
               icon: Icon(Icons.arrow_downward),
               iconSize: 24,
               elevation: 16,
               style: TextStyle(color: Colors.deepPurple),
               underline: Container(
                 height: 2,
                 color: Colors.deepPurpleAccent,
               ),
               onChanged: (String newValue) {
                 setState(() {
                   dropdownValue = newValue;
                 });
               },
               items: <String>['One', 'Two', 'Free', 'Four']
                   .map<DropdownMenuItem<String>>((String value) {
                 return DropdownMenuItem<String>(
                   value: value,
                   child: Text(value),
                 );
               }).toList(),
             ),
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
        ],
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

class SugarLog extends StatefulWidget {
  @override
  _SugarLogState createState() => _SugarLogState();
}

class _SugarLogState extends State<SugarLog> {

  String dropdownValue = 'Breakfast';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
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
                    Text(
                      'Blood Sugar Log',
                      style: TextStyle(fontSize: 18),
                    ),

                  ],
                ),
              ),
            ),

          ),
        ),
        body:Column(children: <Widget>[
          Container(
            color: Colors.black12,
            height: 30,
            width: MediaQuery.of(context).size.width*1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,5,0,0),
              child: Text("Today",style: TextStyle(color: Color.fromRGBO(56, 103, 180, 1),),),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DropdownButton<String>(
                value: dropdownValue,
              style: TextStyle(color: Color.fromRGBO(56, 103, 180, 1)),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Breakfast', 'Two', 'Free', ]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.20,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color.fromRGBO(56, 103, 180, 1),)),
                    filled: true,
                    fillColor: Color.fromARGB(0, 0, 0, 1),
                    hintText: "Glucose",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    ),

                ),
              ),
            ),
              Text("mg/dl"),

              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.20,
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color.fromRGBO(56, 103, 180, 1),)),
                    filled: true,
                    fillColor: Color.fromARGB(0, 0, 0, 1),
                    hintText: "Insulin",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),

                  ),
                ),
              ),
              Text("mg/dl"),
            ],
          ),

          //buttons
          SizedBox(height: 10,),


          Container(
            width: MediaQuery.of(context).size.width*0.90,
            child: FlatButton(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Color.fromRGBO(56, 103, 180, 1),)
              ),
              child: Text("Add new reading"),
              textColor: Color.fromRGBO(56, 103, 180, 1),
              padding: EdgeInsets.all(16),
              onPressed: (){},
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width*0.90,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
              child: Text("Save Details"),
              textColor: Colors.white,
              padding: EdgeInsets.all(16),
              onPressed: (){},
              color: Color.fromRGBO(56, 103, 180, 1),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            color: Colors.black12,

            width: MediaQuery.of(context).size.width*1,
            child: ListTile(

              title: Text("01/06/2020",style: TextStyle(color:Color.fromRGBO(56, 103, 180, 1), ),),

              trailing: Icon(Icons.add_box,color:Color.fromRGBO(56, 103, 180, 1) ,),
            ),
          )



        ],) ,

      ),

    );
  }
}

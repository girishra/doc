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




    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(

            title: Center(child: new Text("Order Medicine",style: TextStyle(color: Colors.blue),)),
            content: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new  Container(
                width: 300,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text("Continue"),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(16),
                  onPressed: (){},
                  color: Colors.blue,
                ),
              ),
            ],
          );
        },
      );
    }

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


          Align(

            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 50.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, spreadRadius: 1),
                      ],
                    ),
                    height: 20,
                    width: 20,
//                    color: Colors.blue,
                    child: Center(child: Text("1",style: TextStyle(color: Colors.black),)),
                  ),
                  Container(
                    width: 200,
                    height: 2,
                    color: Colors.grey,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, spreadRadius: 1),
                      ],
                    ),
                    height: 20,
                    width: 20,
//                    color: Colors.blue,
                    child: Center(child: Text("2",style: TextStyle(color: Colors.black),)),
                  ),
                ],
              ),
            ),
          ),

          Align(
            child: Container(
              margin: const EdgeInsets.only(top: 50.0),

//                height: 400,
            height: MediaQuery.of(context).size.height *0.70,

              child: Card(

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



                  ],
                ),
              ),

            ) ,
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
                     child: Text("Continue"),
                     textColor: Colors.white,
                     padding: EdgeInsets.all(16),
                     onPressed: _showDialog,
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

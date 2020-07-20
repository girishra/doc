import 'package:flutter/material.dart';

class CurrentProblem extends StatefulWidget {
  @override
  _LastHospitalOngoingMedicineState createState() => _LastHospitalOngoingMedicineState();
}

class _LastHospitalOngoingMedicineState extends State<CurrentProblem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.fromLTRB(10,30,10,0),
                child: GestureDetector(
                    onTap: (){
                       Navigator.pop(context);
                    },
                                    child: ListTile(
                      leading:Icon(Icons.close,color: Colors.grey,) ,
                      title: Container(
                          width: 10,
                          child: Text("Current Problem Story",style: TextStyle(fontSize: 18, color:  Color.fromRGBO(56, 103, 180, 1),),)) ,
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 19, 0),
                child: Container(
                  
                  child: ListView.builder(
        itemCount:1,
        itemBuilder: (context, i) {
          // Map<String, dynamic> item = notList[i];
          return Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Container(
                    height: 400,
                    width: 350,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                               Expanded(
                                 child: TextFormField(
                                   maxLines: 5,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    filled: true,
                     fillColor:   Colors.grey[200],
                    hintText: "Describe your problem",hintStyle: TextStyle(
                      color: Colors.grey,
                      
                    )
                    ),
                // controller: _nameController,
              ),
              ),
                               
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                 child: TextFormField(
                                    enabled: false,
                                  
                style: TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  suffixIcon:GestureDetector(
 onTap: () => print('on tap'),
 child: Container(
   decoration:BoxDecoration(borderRadius:   BorderRadius.all(Radius.circular(10.0)),
   color: Color.fromRGBO(56, 103, 180, 1),) ,
     
                        child: FittedBox(
                          
                          // alignment: Alignment.center,
                          // fit: BoxFit.cover,
                          child: IconTheme(
                            data: IconThemeData(),
                            child: Center(child: Image.asset("assets/photoIcon.png",color: Colors.white,))
                          ),
                        ),
 ),
                  ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    filled: true,
                    fillColor:   Colors.grey[200],
                    hintText: "Add photos",hintStyle: TextStyle(
                      color: Colors.grey
                    )),
                // controller: _nameController,
              ),
              ),
                             
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                 Expanded(
                                 child: TextFormField(
                                     enabled: false,
                                   
                style: TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                    suffixIcon:GestureDetector(
 onTap: () => print('on tap'),
 child: Container(
    decoration:BoxDecoration(borderRadius:   BorderRadius.all(Radius.circular(10.0)),
   color: Color.fromRGBO(56, 103, 180, 1),) ,
                        child: FittedBox(
                          // alignment: Alignment.center,
                          // fit: BoxFit.fill,
                          child: IconTheme(
                            data: IconThemeData(),
                            child: Center(child: Image.asset("assets/videoIcon.png",color: Colors.white,height: 10,))
                          ),
                        ),
 ),
                  ),
                   suffixStyle: TextStyle(color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey)),
                    filled: true,
                    fillColor:   Colors.grey[200],
                    hintText: "Add videos",hintStyle: TextStyle(
                      color: Colors.grey
                    )),
                // controller: _nameController,
              ),
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
                ),
              ],
            ),
          );
        })
                ),
              ),
              Padding(
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
                        "Save Details",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

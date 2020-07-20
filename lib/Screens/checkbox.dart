import 'package:flutter/material.dart';

class CheckBoxx extends StatefulWidget {
  @override
  _CheckBoxxState createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
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
      body: SingleChildScrollView(
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
                        child: Text("Other Medical Problem(s) \n & Family History",style: TextStyle(fontSize: 18, color:  Color.fromRGBO(56, 103, 180, 1),),)) ,
                  ),
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
                  height: MediaQuery.of(context).size.height/5,
                  child: Column(
                    children:
                      text.map((t) => CheckboxListTile(
                          checkColor: Colors.purple,
                        activeColor: Colors.white,
                        title: Text(t,style: TextStyle(fontSize: 14)),
                        value: _isChecked,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            if (val == true) {
                              _currText = t;
                            }
                          });
                        },
                      ))
                  .toList(),
                    
                  ),
                ),
                SizedBox(height: 20,),
                Text("Endocrinology"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/7,
                  child: Column(
                    children:
                      text1.map((t) => CheckboxListTile(
                          checkColor: Colors.purple,
                        activeColor: Colors.white,
                        title: Text(t,style: TextStyle(fontSize: 14),),
                          controlAffinity: ListTileControlAffinity.leading,
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            if (val == true) {
                              _currText = t;
                            }
                          });
                        },
                      ))
                  .toList(),
                    
                  ),
                ),

                SizedBox(height: 20,),
                Text("Brain"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/7,
                  
                  child: Column(
                    children:
                      text2.map((t) => CheckboxListTile(
                        checkColor: Colors.purple,
                        activeColor: Colors.white,
                        title: Text(t,style: TextStyle(fontSize: 14)),
                        value: _isChecked,
                          controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            if (val == true) {
                              _currText = t;
                            }
                          });
                        },
                      ))
                  .toList(),
                    
                  ),
                ),
SizedBox(height: 20,),
                Text("Skin"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/7,
                  
                  child: Column(
                    children:
                      text3.map((t) => CheckboxListTile(
                        checkColor: Colors.purple,
                        activeColor: Colors.white,
                        title: Text(t,style: TextStyle(fontSize: 14)),
                        value: _isChecked,
                          controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            if (val == true) {
                              _currText = t;
                            }
                          });
                        },
                      ))
                  .toList(),
                    
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
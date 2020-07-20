
import 'dart:convert';

import 'package:flutter/material.dart';
class Specialist extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<Specialist> {
  List categoryList;



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Categories"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 20,

        itemBuilder: (BuildContext context, int index){
          print("categoryyy");
          print(categoryList);

          return GestureDetector(
            // onTap: (){
            //   Navigator.of(context).pushNamed(PlayScreen.routeName);
            // },
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.transparent)),
              child: Card(
                margin: EdgeInsets.all(0),
                // color: Color.fromRGBO(31, 0, 65, 100),
                elevation: 8,
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                 Image.network('https://www.sermo.com/wp-content/uploads/2017/07/shutterstock_448894387_v2.jpg'),
                  
                  
                   Text(
                      "Cardiology",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  
                ]),
              ),
            ),
          );
        } ,
      ),
    );
  }
}

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

          return Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: Image.network('https://www.sermo.com/wp-content/uploads/2017/07/shutterstock_448894387_v2.jpg'
                    , fit:BoxFit.fill
                        ,
                      height: 180,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 12,
                    left: 12,
                    child: ClipRRect(
                    borderRadius: new BorderRadius.only(
          topRight: const Radius.circular(20.0),
          ),
                      child: Container(
                        height: 40,
                        width: 120,
                        color: Color.fromRGBO(105, 105 , 105, 50),
                          child: Center(child: Text("someText",style: TextStyle(color: Colors.white),))),
                    )),
              ]
          );
        } ,
      ),
    );
  }
}







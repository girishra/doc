import 'package:flutter/material.dart';
import 'intro_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _passController = TextEditingController();
  List<String> _locations = ['Male', 'Female', 'Others']; // Option 2
  String _selectedLocation; // Option 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
       width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(56, 103, 180, 1),
        Color.fromRGBO(15, 148, 180, 1)
      ])),
      padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/BackArrow.png",
                  alignment: Alignment.topLeft,
                 height: MediaQuery.of(context).size.height/20,
                ),
              ),
              SizedBox( height: MediaQuery.of(context).size.height/25,),
              Center(
                  child: Text(
                "User Registration",
                style: TextStyle(color: Colors.white, fontSize: 36),
              )),
              SizedBox( height: MediaQuery.of(context).size.height/25,),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    filled: true,
                    fillColor:   Color.fromARGB(0, 0, 0, 1),
                    hintText: "Enter your name",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _nameController,
              ),
              SizedBox(
               height: MediaQuery.of(context).size.height/45,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    filled: true,
                    fillColor:   Color.fromARGB(0, 0, 0, 1),
                    hintText: "Enter your email",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _emailController,
              ),
              SizedBox(
                 height: MediaQuery.of(context).size.height/45,
              ),
              SizedBox(
                width: 100,
                child: DropdownButton(
                  hint: Text(
                    'Gender',
                    style: TextStyle(color: Colors.white),
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
              SizedBox(
                height: MediaQuery.of(context).size.height/45,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    filled: true,
                    fillColor:   Color.fromARGB(0, 0, 0, 1),
                    hintText: "Age",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _ageController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/45,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    filled: true,
                   fillColor:   Color.fromARGB(0, 0, 0, 1),
                    hintText: "Password",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _passController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/45,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    filled: true,
                   fillColor:   Color.fromARGB(0, 0, 0, 1),
                    hintText: "Confirm Password",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _passController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/15,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text("SUBMIT"),
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(16),
                  onPressed: () {
                  },
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
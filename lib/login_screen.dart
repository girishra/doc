import 'package:flutter/material.dart';
import 'package:swasthu/mobile_number.dart';
import 'intro_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
 bool _obscureTextLogin = true;
  final _passController = TextEditingController();
 void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }
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
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 36),
              )),
              SizedBox(height: MediaQuery.of(context).size.height/10),
              TextFormField(
                style: TextStyle(
                  color: Colors.white
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
                    hintText: "Phone Number",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _phoneController,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/45,
              ),
              TextFormField(style: TextStyle(
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
                    ),  suffixIcon: GestureDetector(
                              onTap: _toggleLogin,
                              child: Icon(
                                Icons.remove_red_eye,
                                size: 15.0,
                                color: Colors.white,
                              ),
                            ),),obscureText: _obscureTextLogin,
                controller: _passController,
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height/10,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text("Login"),
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(16),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MobileNumber()));
                  },
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "Forgot your password ?",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

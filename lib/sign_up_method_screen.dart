import 'package:flutter/material.dart';
import 'package:swasthu/components/bottomnavbar.dart';
import 'package:swasthu/mobile_number.dart';
import 'intro_screen.dart';

class SignupMethods extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
          
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
                image: AssetImage("assets/doc.png"), fit: BoxFit.cover,),color: Colors.transparent,
          gradient: LinearGradient(colors: [
        Color.fromRGBO(56, 103, 180, 1),
        Color.fromRGBO(15, 148, 180, 1)
      ])),
      padding: EdgeInsets.fromLTRB(32, 82, 32, 0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "DOCARE",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\nTALK TO A PHYSICIAN',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 6),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "See doctor on your phone",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                         ),
                    ),
                    TextSpan(
                      text: '\nwith in minutes',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height:MediaQuery.of(context).size.height/5,
              ),
                
                new Container(
                  width: double.infinity,
      child: new RaisedButton(
        padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
        color: Colors.white,
        // Within the `FirstRoute` widget
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNav()),
          );
        },

        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(
              'assets/google.png',
              height: 38.0,
            ),
            new Container(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new Text("Register with Google",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ),
          ],
        )
      ),
    ),
     SizedBox(
                height:MediaQuery.of(context).size.height/45,
              ),
    new Container(
      width: double.infinity,
      // margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
      child: new RaisedButton(
        padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
       color: const Color(0xFF4285F4),
        onPressed: () {

        },
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(
              'assets/fb.png',
              height: 38.0,
            ),
            new Container(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new Text("Register with Facebook",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ),
          ],
        )
      ),
    ),
                 
              Center(
                child: Container(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // padding: EdgeInsets.all(16),
                  color: Colors.transparent,
                ),
                
              ),
               new Container(
      width: double.infinity,
      // margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
      child: new RaisedButton(
        padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
       color: Colors.white,
        onPressed: () {},
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(
              'assets/person.png',
              height: 38.0,
            ),
            new Container(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new Text("Continue user registration",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ),
          ],
        )
      ),
    ),
    RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Have an account? ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                         ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

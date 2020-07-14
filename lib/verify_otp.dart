import 'package:flutter/material.dart';
import 'package:swasthu/register_screen.dart';
import 'intro_screen.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<VerifyOtp> {
  final _phoneController = TextEditingController();

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
              SizedBox(                height: MediaQuery.of(context).size.height/15,
),
              Center(
                  child: Text(
                "Verifying OTP",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "A 6 digit OTP has been send to",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      TextSpan(
                        text: '\n9999999999',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(                height: MediaQuery.of(context).size.height/25,
),
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
                    hintText: "Enter OTP",hintStyle: TextStyle(
                      color: Colors.white
                    )),
                controller: _phoneController,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Resend 6 digit OTP? 25s",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  color: Colors.transparent,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  child: Text("Resend"),
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(16),
                  onPressed: () {},
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                               height: MediaQuery.of(context).size.height/25,

              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  child: Text("Submit"),
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(16),
                  onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => RegisterScreen()));
                  },
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

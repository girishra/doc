import 'package:flutter/material.dart';
import 'package:swasthu/verify_otp.dart';
class MobileNumber extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<MobileNumber> {
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
              Center(
                  child: Text(
                "Please enter your 10 digit mobile number",
                style: TextStyle(color: Colors.white, fontSize: 27),
              )),
 SizedBox(
                height: MediaQuery.of(context).size.height/25,
              ),              TextFormField(
                style: TextStyle(
                  color: Colors.white,
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
                    fillColor: Color.fromARGB(0, 0, 0, 1),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
                controller: _phoneController,
              ),
            SizedBox(
                height:MediaQuery.of(context).size.height/2,
              ),
                
                 Container(
                  width: double.infinity,
                  child: FlatButton(
                    child: Text("SUBMIT"),
                    textColor: Colors.blue,
                    padding: EdgeInsets.all(16),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => VerifyOtp()));
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

import 'package:flutter/material.dart';
import 'package:swasthu/Screens/biopsy_reports.dart';
import 'package:swasthu/Screens/checkbox.dart';
import 'package:swasthu/Screens/current_problem.dart';
import 'package:swasthu/Screens/e_prescription.dart';
import 'package:swasthu/Screens/lab_reports.dart';
import 'package:swasthu/Screens/last_hospital_admission.dart';
import 'package:swasthu/Screens/medical_reminder.dart';
import 'package:swasthu/Screens/onGoingMedicine.dart';

class HealthWallet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HealthWalletShopListState();
  }
}

class _HealthWalletShopListState extends State<HealthWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(56, 103, 180, 1),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              child: Row(
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                    child: Image.asset(
                      "assets/BackArrow.png",
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                  Text(
                    'Health Wallet',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/userMale.png",
                      height: 30, fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/profileImage.png",
                      height: 38, fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Mark Samuels",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "\n27 years old",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "\nNoida",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(15, 148, 180, 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/weight.png",
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              "Weight",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/thermometer.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text("Temperature",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/lungs.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text("Respiratory rate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/bloodSample.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text("Blood group",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: 1.0,
                color: Colors.blue,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(15, 148, 180, 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Wrap(
                      spacing: 0.0,
                      runSpacing: 4.0,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: Row(
                            children: <Widget>[
                              Image.asset("assets/ruler.png", height: 20),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Text("Height",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.blue,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.22,
                          child: Row(
                            children: <Widget>[
                              Image.asset("assets/heartPulse.png", height: 20),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Text("Pulse rate",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.blue,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/hygrometer.png",
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Text("Blood pressure",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.blue,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.24,
                          child: Row(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.0)),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 10),
                                    child: Text(
                                      'Edit  \n Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 10),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              new Container(
                height: 1.0,
                color: Colors.grey[400],
              ),
              Text(
                "HEALTH DETAILS",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Table(
                children: [
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CurrentProblem()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width:
                                1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/inquiry.png", height: 35),
                                Text(
                                  "current problem story\n (photos/text/videos)",
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CheckBoxx()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/hospital+.png", height: 35),
                                Text(
                                  "other medical problem(s)\n & family history",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1, //                   <--- border width here
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/diabetes.png", height: 35),
                              Text(
                                "Blood sugar \n log",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LabReports()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/labItems.png",
                                height: 35,
                              ),
                              Text(
                                "Blood,Urine,X-ray,\n CT-scan,MRI Reports",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LastHospital()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width:
                                1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/hospitalRoom.png",
                                  height: 35),
                              Text(
                                "Last hospital admission\nand discharge summary",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    OngoingMedicine()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/ongoingMedicine.png",
                                  height: 35),
                              Text(
                                "ongoing Medicine & allergy\n to any medicine and food",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    OngoingMedicine()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width:
                                1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/wine.png", height: 35),
                              Text(
                                "Smoking,tobbaco,\n alcohal & other habit",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BiopsyReports()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/microscope.png", height: 35),
                              Text(
                                "Biopsy reports",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MedicalReminder()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/pillReminder.png", height: 35),
                              Text(
                                "medical reminder",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EPrescription()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1, //                   <--- border width here
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/training.png",
                                height: 35,
                              ),
                              Text(
                                "doctor's E-prescription",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

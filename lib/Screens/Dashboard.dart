import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controller = PageController(viewportFraction: 2.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: WormEffect(),
            ),
          ),

          SizedBox(height: 16),
          Container(

            width: double.infinity,
            height: 350,

            child: PageView(

              controller: controller,
              children: <Widget>[
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/corona.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Coronavirus \n assessment",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/lab.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Order \n Lab Test",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/pills.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Order \n Medicines",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/search.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Find & \n Order",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/ambulance.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Call \n Ambulance",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/female.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Track My \n Periods",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/pills.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Medicines \n Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/syringe.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("vaccination \n reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/pregnant.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Pregnancy \n Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/calculator.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("BMI \n Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/meal.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Diet \n Personalizer",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),  Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/training.png",width: 30,height: 30,),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Health \n Education",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ],
                      ),



                    ],
                  ),
                ),



              ],
            ),
          ),
          SizedBox(height: 16),



        ],
      ),
    );
  }

}








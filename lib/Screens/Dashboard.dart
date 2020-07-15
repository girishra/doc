import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_indicator/page_indicator.dart';

import 'package:carousel_pro/carousel_pro.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          
          Container(
            height: 250,
              child: Carousel(
                    images: [
                      NetworkImage(
                          'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/738:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg'),
                      NetworkImage(
                          'https://images7.alphacoders.com/994/994868.jpg'),
                      NetworkImage(
                          'http://freefiremobile-a.akamaihd.net/ffwebsite/images/wallpaper/pop/067.jpg'),
                      NetworkImage(
                          'http://freefiremobile-a.akamaihd.net/ffwebsite/images/wallpaper/pop/019.jpg'),
                      NetworkImage(
                          'http://freefiremobile-a.akamaihd.net/ffwebsite/images/wallpaper/pop/004.jpg'),
                      ExactAssetImage("assets/game_img/game03.png")
                    ],
                  ),
              
              
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 60),
          
          
          Container(
            color: Colors.grey[200],
            child: Container(
              height:  MediaQuery.of(context).size.height / 2,
              child: PageIndicatorContainer(
                indicatorColor: Colors.white,
                indicatorSelectorColor: Colors.blue,
                key: key,
                child: PageView(
                  children: <Widget>[

                    Container(
                      width: double.infinity,
                      height: 280,
                      child: PageView(
                        controller: controller,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
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
                          Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
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
                          Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
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
                          Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
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
                        ],
                      ),
                    ),

                  ],
                  controller: controller,
                  // reverse: true,
                ),
                align: IndicatorAlign.top,
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                length: 4,
                
                indicatorSpace: 10.0,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

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
            color: Colors.grey[200],
            child: Container(
              // height: 610,
              child: PageIndicatorContainer(
                
                indicatorColor: Colors.white,
                indicatorSelectorColor: Colors.blue,
                key: key,
                child: PageView(
                  
                  children: <Widget>[

                    Container(
                      width: double.infinity,
                      // height: 280,
                      child: PageView(
                        controller: controller,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              
Container(
      height: 200.0,alignment: Alignment.topCenter,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
                          'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/738:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    SizedBox(height: 20,),
                            
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
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
                             
                              Container(
      height: 200.0,alignment: Alignment.topCenter,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
                          'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/738:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    SizedBox(height: 20,),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/stethoscope.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Self \n assessment",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/earth.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n Global Update",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/tv.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n News",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/Sneeze.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Common \n Symptoms",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/map.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n India Update",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/reading.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n Reseacrh",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/wash.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Hand \n Disinfected",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/food.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Handling food \n & Groceries",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/video.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n Videos",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/mask.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Face Mask \n & Accessories",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/pestle.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Ayurveda & \n Covid-19",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/ebook.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Covid-19 \n Blogs",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),
                                ],
                              ),



                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
      height: 200.0,alignment: Alignment.topCenter,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
                          'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/738:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    SizedBox(height: 20,),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/hospital.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Hospital \n Search",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/nurse.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Nursing \n Search",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/ambulance.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Ambulannce \n Search",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/yoga.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Know & \n Your Body",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/calculator.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("BMI \n Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/pregnant.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Pregnancy \n Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ), Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/meal.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Diet \n Personalizer",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/video.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Health \n Related Videos",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/tv.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("News & \n Awareness",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/syringe.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Vaccination \n Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/ebook.png",width: 30,height: 30,),
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
                            Container(
      height: 200.0,alignment: Alignment.topCenter,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
                          'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/738:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    SizedBox(height: 20,),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/capsule.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("ePharmacy",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/facePowder.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("eCosmetic",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/hospitalSign.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Hospital \n Partners",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/testTube.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("eLab",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/glucometer.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Medical \n Products",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/caduceus.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Organisation \n Partner",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
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
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/sick.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("eImaging \n Center",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),  Column(
                                    children: <Widget>[
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset("assets/surgical.png",width: 30,height: 30,),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Surgical \n Products",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row (
                                  
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          elevation: 4,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Image.asset("assets/pregnant.png",width: 30,height: 30,),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Society/NGO/ \n Association",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),),
                                      ],
                                    ),  
                                   
                                  ],
                                ),
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
                align: IndicatorAlign.bottom,
               padding: const EdgeInsets.all(10),
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
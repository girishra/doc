import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column (
        children: <Widget>[
      Container(
        height: 200,
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
          // icons starts from here
          SizedBox(height: 20,),
          Container(
             height: 400,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1.6/2),
              children: <Widget>[
               _gridItems(AssetImage("assets/lab.png")),
                _gridItems(AssetImage("assets/corona.png")),
                 _gridItems(AssetImage("assets/pills.png")),
                  _gridItems(AssetImage("assets/search.png")),
                   _gridItems(AssetImage("assets/female.png")),
                    _gridItems(AssetImage("assets/ambulance.png")),
                     _gridItems(AssetImage("assets/testResult.png")),
                      _gridItems(AssetImage("assets/syringe.png")),
                       _gridItems(AssetImage("assets/pregnant.png")),
                        _gridItems(AssetImage("assets/calculator.png")),
                         _gridItems(AssetImage("assets/meal.png")),
                          _gridItems(AssetImage("assets/training.png")),
              ],
            ),

          ),
        ],

      ),
    );
  }
}
_gridItems(icons){
  return Column(
    children: <Widget>[
      Card(
        shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image(
            image: icons,
            color: Colors.blue,
          ),
        ),
      ),
      SizedBox(height: 2.0,),
      Text("Name"),
      SizedBox(height: 10.0,),
    ],
  );
}
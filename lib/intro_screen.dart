import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swasthu/login_screen.dart';


class PreSignUpSlider extends StatefulWidget {

  @override
  _PreSignUpSliderState createState() => _PreSignUpSliderState();
}

class _PreSignUpSliderState extends State<PreSignUpSlider> {
  final ScrollController scrollController = ScrollController();
  PageController _screenController;
  int _currentIndex=0;

  @override
  void initState(){ 
    super.initState();
    _screenController=PageController();

  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: PageView(
                controller: _screenController,
                onPageChanged: (int index){
                  setState(() {
                    _currentIndex=index;
                  });
                },
                children: <Widget>[
                  PreSignUpPage('assets/SCREEN1.jpg'),
                  PreSignUpPage('assets/SCREEN1.jpg'),
                  PreSignUpPage('assets/SCREEN1.jpg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SmoothPageIndicator(
                  controller: _screenController, 
                  count: 3,
                  effect: SlideEffect(
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    activeDotColor: Colors.lightGreen
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: (){
                    if(_currentIndex==2){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));
                    } else if (_screenController.hasClients) {
                      _screenController.animateToPage(
                        _currentIndex+1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    height: height*0.05,
                    width: width*0.26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'NEXT',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            color: Colors.white
                          ),
                        ),
                        Container()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreSignUpPage extends StatefulWidget {
  final String img;
  PreSignUpPage(this.img);
  @override
  _PreSignUpPageState createState() => _PreSignUpPageState();
}

class _PreSignUpPageState extends State<PreSignUpPage> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.img),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
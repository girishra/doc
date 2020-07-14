import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swasthu/Screens/Dashboard.dart';
class BottomNav extends StatefulWidget {
  BottomNav({Key key}) : super(key: key);

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  final widgetOptions = [
    Dashboard(),
    // Text('Home'),
    Text('My Order'),
    Text('Appts'),
    Text('Call History'),
    Text('Health Wallet'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,
            leading: Icon(Icons.add),
            centerTitle: true,
            title: Column(
              children: <Widget>[
                Text("Your location",style: TextStyle(
                  color: Colors.black
                ),),
                Text("Address",style: TextStyle(
                  color: Colors.black
                ),),
              ],
            ),
          ),

        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
            
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Image.asset("assets/home.png"), title: Text('Home')),
              BottomNavigationBarItem(icon: Image.asset("assets/order.png"), title: Text('My order')),
              BottomNavigationBarItem(icon: Image.asset("assets/health.png"), title: Text('Appts')),
              BottomNavigationBarItem(icon:  Image.asset("assets/phone.png"), title: Text('Call History')),
              BottomNavigationBarItem(icon: Image.asset("assets/wallet.png"), title: Text('Health Wallet')),

            ],
            currentIndex: selectedIndex,
            fixedColor: Colors.blue,
            onTap: onItemTapped,
          )
      )
     ,
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
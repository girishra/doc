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
              BottomNavigationBarItem(icon: Image.asset("assets/home.png",width: 20,height: 20,), title: Text('Home',style: TextStyle(fontSize: 10),)),
              BottomNavigationBarItem(icon: Image.asset("assets/order.png",width: 20,height: 20), title: Text('My order',style: TextStyle(fontSize: 10),)),
              BottomNavigationBarItem(icon: Image.asset("assets/health.png",width: 20,height: 20), title: Text('Appts',style: TextStyle(fontSize: 10),)),
              BottomNavigationBarItem(icon:  Image.asset("assets/phone.png",width: 20,height: 20), title: Text('Call History',style: TextStyle(fontSize: 10),)),
              BottomNavigationBarItem(icon: Image.asset("assets/wallet.png",width: 20,height: 20), title: Text('Health Wallet',style: TextStyle(fontSize: 10),)),

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
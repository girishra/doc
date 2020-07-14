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
          appBar: AppBar(
            leading: Icon(Icons.add),
            centerTitle: true,
            title: Column(
              children: <Widget>[
                Text("Your location"),
                Text("Address"),
              ],
            ),
          ),

        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.local_drink), title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('My order')),
              BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), title: Text('Appts')),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('Call History')),
              BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), title: Text('Health Wallet')),

            ],
            currentIndex: selectedIndex,
            fixedColor: Colors.deepPurple,
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
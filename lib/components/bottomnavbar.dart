import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swasthu/Screens/Dashboard.dart';
import 'package:swasthu/Screens/health_wallet.dart';
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
    HealthWallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //  appBar: PreferredSize(
        //       preferredSize: Size.fromHeight(55.0),
        //             child: AppBar(
        //     title: Container(
        //       child: Row(
        //         children: [
        //           Image.asset(
        //             "assets/notification.png",
        //             fit: BoxFit.cover,
        //             height: 26,
        //           ),
        //           SizedBox(width:  MediaQuery.of(context).size.width/4.5,),
        //           RichText(
        //               textAlign: TextAlign.center,
        //               text: TextSpan(
        //                 children: [
        //                   TextSpan(
        //                     text: "Yours location",
        //                     style: TextStyle(
        //                       fontSize: 16,
        //                       color: Colors.grey,
        //                     ),
        //                   ),
        //                   TextSpan(
        //                     text: "\n33B Baker's Street",
        //                     style: TextStyle(
        //                       fontSize:18,
        //                       color: Colors.black,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //         ],
        //       ),
        //     ),actions: <Widget>[
        //      Row(
        //        children: <Widget>[
        //          Image.asset("assets/icons8_Settings_100px_1.png", height: 48,  fit: BoxFit.cover,)
        //        ],
        //      )
        //     ],
        //     backgroundColor: Colors.white,
        // ),
        //  ),
          // appBar:  AppBar(backgroundColor: Colors.white,
          
          //     // : Image.asset("assets/notification.png",height: 20,width: 10,),
          //     centerTitle: true,
          //     actions: <Widget>[
          //       Image.asset("assets/icons8_Settings_100px_1.png")
          //     ],
          //     title: Column(
          //       children: <Widget>[
          //         Text("Your location",style: TextStyle(
          //           color: Colors.grey,fontSize: 12
          //         ),),
          //         Text("33B Baker's Street",style: TextStyle(
          //           color: Colors.black
          //         ),),
          //       ],
          //     ),
          //   ),
          

        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
            
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Image.asset("assets/home.png",width: 20,height: 25,), title: Text('Home',style: TextStyle(fontSize: 12),)),
              BottomNavigationBarItem(icon: Image.asset("assets/order.png",width: 20,height: 25), title: Text('My order',style: TextStyle(fontSize: 12),)),
              BottomNavigationBarItem(icon: Image.asset("assets/health.png",width: 20,height: 25), title: Text('Appts',style: TextStyle(fontSize: 12),)),
              BottomNavigationBarItem(icon:  Image.asset("assets/phone.png",width: 20,height: 25), title: Text('Call History',style: TextStyle(fontSize: 12),)),
              BottomNavigationBarItem(icon: Image.asset("assets/wallet.png",width: 20,height: 25), title: Text('Health Wallet',style: TextStyle(fontSize: 12),)),

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
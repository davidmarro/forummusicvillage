import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int currentPage=0;
  Widget build(BuildContext context) {
   
  return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        //TabData(iconData: Icons.search, title: "Search"),
        TabData(iconData: Icons.subtitles, title: "Percorso")
        ],
        onTabChangedListener: (position) {
        setState(() {
         currentPage = position;
        });

    },
        inactiveIconColor: Colors.orange,
        activeIconColor: Colors.white,
        circleColor: Colors.orange,
      ),

      body: Placeholder(fallbackHeight: MediaQuery.of(context).size.height, fallbackWidth: MediaQuery.of(context).size.width),
          backgroundColor: Colors.white,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            width: 65,
            height: 65,
            child: FittedBox(
                          child: FloatingActionButton(
      
        onPressed: () {
        // Add your onPressed code here!
        },

        child: Icon(Icons.camera,size: 26,),
        backgroundColor: Colors.orange,
        elevation: 3,
        
      ),
            ),
          ),
    );
        
      


  }
}
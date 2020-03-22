

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

      bottomNavigationBar: /* BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
     ],),*/
         FancyBottomNavigation(
            
            tabs: [
            TabData(iconData: Icons.home, title: "Home",),
            //TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.subtitles, title: "Percorso",)
            ],
            onTabChangedListener: (position) {
            setState(() {
             currentPage = position;
            });

    },
            inactiveIconColor: Colors.grey,
            activeIconColor: Colors.grey,
            circleColor: Colors.white,

          ),
          
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            width: 65,height: 65,
            
            child: FloatingActionButton(
              
              child: Icon(Icons.camera_enhance,size: 32,),
              onPressed: null,splashColor: Colors.orange,
              backgroundColor: Colors.orange,
              
  ),
          ),   
      

//imagebackground
      body: 
          Column(children: <Widget>[
              Placeholder(fallbackHeight: MediaQuery.of(context).size.height * 0.75, fallbackWidth: MediaQuery.of(context).size.height ),
             Container(
            color: Colors.green,
            width: 100,//MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.16,
          ),

                           
            
            
           /* Container(
              width: 500,
              height: MediaQuery.of(context).size.height * 0.16,
              child: DecoratedBox(decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white10),
                       
            ),
            
              ),*/
          ],
         ),
      
          
          
          backgroundColor: Colors.white,
   
);
        
      


  }
}
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expandable/expandable.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:forum_prova/widgets/carousel.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int currentPage = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          /*  BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
     ],),*/
          Container(
        margin: EdgeInsets.only(top: 20),
        child: FancyBottomNavigation(
          tabs: [
            TabData(
              iconData: Icons.home,
              title: "Home",
            ),
            //TabData(iconData: Icons.search, title: "Search"),
            TabData(
              iconData: Icons.subtitles,
              title: "Percorso",
            )
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
          inactiveIconColor: Colors.grey,
          activeIconColor: Colors.orange,
          initialSelection: currentPage,
          circleColor: Colors.white,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          child: Icon(
            Icons.camera_enhance,
            size: 32,
          ),
          onPressed: null,
          splashColor: Colors.orange,
          backgroundColor: Colors.orange,
        ),
      ),
backgroundColor: Colors.white,
//imagebackground
      body: 
      
      Container(
        height: MediaQuery.of(context).size.height ,
        child: ExpandableBottomSheet(
          
  background: Container(
    height: 800,
    color: Colors.orange,
    child: Center(
        child: Text('Backgrounde'),
    ),
  ),
  persistentHeader: Container(
   // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                decoration: new BoxDecoration(
                  color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),),
    height: 60,
    
    child: Center(
        child: Text(''),
    ),
  ),
  expandableContent: Container(
    height: 500,
    color: Colors.white,
    child: Column(
      children: <Widget>[
          CarouselWithIndicator(),
      ],
    ),
  ),
),
      ),

      //Column(children: <Widget>[
      //    Placeholder(fallbackHeight: MediaQuery.of(context).size.height * 0.75, fallbackWidth: MediaQuery.of(context).size.height ),
      /*Container(
            color: Colors.green,
            width: 100,//MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.16,
          ),*/

      // ],
      //  ),

     // backgroundColor: Colors.white,
    );
  }
}

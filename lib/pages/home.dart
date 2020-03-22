

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget buildBottomSheet() {
      return Container(
          color: Colors.white,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            RadioListTile(dense: true, title: Text('Test'), groupValue: 'test', onChanged: (value) {}, value: true),
            RadioListTile(dense: true, title: Text('Test'), groupValue: 'test', onChanged: (value) {}, value: true),
          ]));
    }


  @override
  int currentPage=0;
  Widget build(BuildContext context) {
   
  return Scaffold(

      bottomNavigationBar:  ExpandableNotifier( child: 
      Column(mainAxisSize: MainAxisSize.min,
        children: <Widget>[Expandable(expanded: buildBottomSheet(),),ExpandableButton(
                child: SizedBox(height: 50,
                  child: Center(
                    child: Icon(Icons.edit),
                  ),
                ),
              ),
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
        ],
      ),),

//imagebackground
      body: Column(
        children: <Widget>[
          Column(children: <Widget>[
            
            Stack(children: <Widget>[
              Placeholder(fallbackHeight: MediaQuery.of(context).size.height * 0.75, fallbackWidth: MediaQuery.of(context).size.height ),
              Positioned(left: 10,right: 10,
                child: Container(
              margin: EdgeInsets.only(top:20),
              child: FittedBox(
                child: Container(
                  width: 65,
                  height: 65,
                  margin: const EdgeInsets.only(bottom: 32),
                  child: RaisedButton(
                  onPressed: () {
                  // Add your onPressed code here!
                  },
        child: Icon(Icons.camera,size:30,),
      //  backgroundColor: Colors.orange,
        elevation: 3,
        
        ),
      ),),),),],
                           
            ),
            
            Container(
              width: 500,
              height: MediaQuery.of(context).size.height * 0.16,
              child: DecoratedBox(decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white10),
                       
            ),
            
              ),
          ],
         ),
        ],
      )
          ,
          
          backgroundColor: Colors.white,
         // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            margin: EdgeInsets.only(top:100),
            child: FittedBox(
              child: Container(
                width: 65,
                height: 65,
                margin: const EdgeInsets.only(bottom: 32),
                child: FloatingActionButton(
                onPressed: () {
                // Add your onPressed code here!
                },
        child: Icon(Icons.camera,size:30,),
        backgroundColor: Colors.orange,
        elevation: 3,
        
        ),
      ),
    ),
  ),      
);
        
      


  }
}
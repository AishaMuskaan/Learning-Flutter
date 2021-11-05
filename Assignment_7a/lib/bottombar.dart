import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels:false,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore_sharp,
             size: 25,
        color: Colors.grey[400],
          ),label: "explore",
         
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
             size: 25,
            color: Colors.grey[400],
          ),
          label: 'save',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.replay_5 ,
             size: 25,
            color: Colors.grey[400],
          ),
          label: 'replay',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_active_rounded  ,
             size: 25,
            color: Colors.red,
             
          ),
          label: 'notification',
        ),
         
        
      ],
    ));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/body.dart';
 import 'package:myapp/bottombar.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.apps, color: Colors.red,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pic1.jpg'),
                radius: 16,
              ), 
            ),
          )
        ],
      ),
       body: SafeArea(
         child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Body(),),),
      bottomNavigationBar:  BottomBar(),
    );
  }
}
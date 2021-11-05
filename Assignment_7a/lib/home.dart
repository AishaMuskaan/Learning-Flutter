import 'package:flutter/material.dart';
import 'package:hello/body.dart';
import 'package:hello/bottombar.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.red,),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.lime[100],
            borderRadius: BorderRadius.circular(22)
          ),
          child: TextField(decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey,),
             hintText: 'Search your food'),
        ),
      ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: CircleAvatar(radius: 17,
            backgroundImage: AssetImage("assets/images/pic1.jpg"),
            ),
          ),
         
        ],
      ),
       
      body: SingleChildScrollView(
        child: Body(),
      ),
      bottomNavigationBar: BottomBar(),
    );
}
}


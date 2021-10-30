import 'package:flutter/material.dart';

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
            color: Colors.lightGreen[200],
            borderRadius: BorderRadius.circular(22)
          ),
          child: TextField(decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey,),
             hintText: 'Search your food'),
        ),
      ),
        actions: [
          CircleAvatar(radius: 20,
          backgroundColor: Colors.lime,
          ),
         
        ],
      ),
       
      body: SingleChildScrollView(
        child: Column(
          children: [
        Container(
          height:MediaQuery.of(context).size.height*0.35,
          child: 
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25.0),),
                   CircleAvatar(radius: 45, backgroundColor: Colors.red,),
                   Padding(padding: EdgeInsets.only(right: 15.0),),
                   CircleAvatar(radius: 75, backgroundColor: Colors.yellow,),
                   Padding(padding: EdgeInsets.only(left: 15.0),),
                   CircleAvatar(radius: 45, backgroundColor: Colors.red,),
                   Padding(padding: EdgeInsets.only(right: 25.0),),
                ],
        ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.03,
          width: MediaQuery.of(context).size.width*0.9,
          child: Text("Original Fried Shrimp", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("Shrimp Category" ,style: TextStyle(color: Colors.grey, fontSize: 15),),
              RichText(text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: ("\$"),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "6.9",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
          ])),
          
            ]
              
          )
        ),
        Container(
           height: MediaQuery.of(context).size.height*0.03,
          width: MediaQuery.of(context).size.width*0.9,
            child: Row(
              children: [
                Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
                Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
                Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
                Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
                Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
              ],
            ),
          ),
          Container(
            color: Colors.red,
             height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width*0.9,
           padding: EdgeInsets.only(top: 40, left: 20),
            child: Text("lorem  lpsum  dolor  sit  omat  connector  adpiecing  eit sed do elusmed", 
            style: TextStyle(fontSize: 19),),
          )
          ],
        ),
      ),
    );
  }
}
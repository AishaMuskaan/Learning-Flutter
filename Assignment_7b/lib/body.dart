import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.8,
      child: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.5,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.fmd_good, color: Colors.deepOrange[700],),
                  Text("Denpasar, IDN" ,style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold),),
                  Icon(Icons.expand_more, color: Colors.grey,)
                ],
              ),
            ),
          ),
           Container(
             margin: EdgeInsets.all(10),
             width: MediaQuery.of(context).size.width*0.9,
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
      Container(
        margin: EdgeInsets.only(top: 1),
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.9,
        child:  RichText(text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: ("Food"),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: ("  Categories"),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
          ])),
      ),
      Container(
        height: MediaQuery.of(context).size.height*0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 05),
            ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )

                  ),  
            child: Text("All food", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 05), 
            items(" Shrimp", "assets/pic2.jpg"),
            SizedBox(width: 05), 
            items(" Noodles", "assets/pic3.jpg"),
            SizedBox(width: 05),
            items(" Burger", "assets/pic4.jpg")
          ],
        ),
     ),
     abc(context, "Favourite", "  Foods"),
    
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         box(context, "Original Fried Shrmip", "Fried Shrimps","assets/pic5.jpg", " 6.9"),
         SizedBox(width: 15),
         box(context, "Spicy Chicken Noodlles", "Chicken Noodles","assets/pic6.jpg", " 7.9")
       ],
     ),
     abc(context, "Others", "  Foods"),
     Row(
       children: [
         box2(context, "assets/pic7.jpg", "Cheese Pizza", " 6.9"),
         SizedBox(width: 15,),
         box2(context, "assets/pic8.jpg", "Baked Beef", " 8.6")
       ],
     )
     
      
        ]
      )
);
   }
}

Widget items(String txt, String pic){
 return ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                    primary: Colors.amber[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), 
                    )
 
                  ),  
            child: Row(
              children: [
              CircleAvatar(
                backgroundImage: AssetImage(pic),
                radius: 10,
              ), 
              Text(txt, style: TextStyle(color: Colors.red, )),
            ],)
            );
}

Widget abc(BuildContext context, String txt1, String txt2,){
  return Container(
    margin: EdgeInsets.only(bottom: 3),
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.9,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: (txt1),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: (txt2),
                    style: TextStyle(
                      color: Colors.red[500],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))
              ])),
              Row(
                children: [
                  Text("See more", style: TextStyle(color: Colors.red, fontSize: 10),),
                  Icon(Icons.keyboard_arrow_right, color: Colors.red, size: 10,)
                ],
              )
          ],
        ),
      );
} 

Widget box(BuildContext context,String txt1, String txt2, String pic, String price){
  return Stack(
       children: [
         Container(
           margin: EdgeInsets.only(top: 65),
           height: MediaQuery.of(context).size.height*0.12,
           width: MediaQuery.of(context).size.width*0.42,
           decoration: BoxDecoration(
             color: Colors.red,
             borderRadius: BorderRadius.circular(10)
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Text(txt1, style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 13,
                 color: Colors.white
               ),),
               Text(txt2, style: TextStyle(
                 fontSize: 09,
                 color: Colors.white
               ),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   rating(),rating(),rating(),rating(),rating(),rating(),
                 ],
               ),
               SizedBox(height: 5,)
             ],
           ),
         ),
         Positioned(
            top: -3,
           right: 10,
           left: 10,
           child: CircleAvatar(
             backgroundColor: Colors.deepOrange[50],
             radius: 60,
             child:  CircleAvatar(
             backgroundImage: AssetImage(pic),
             radius: 55,)
           )),
           Positioned(
             right: 12,
             top: 0,
             child: CircleAvatar(
               backgroundColor: Colors.white,
               radius: 23,
               child:  RichText(text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ("\$"),
                    style: TextStyle(
                      color: Colors.red[500],
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: (price),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ))
              ])),
             ))
       ],
     );
}
Widget rating(){
  return Container(
    child: Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 13.0,));
}
Widget box2(BuildContext context, String pic, String txt, String price){
  return Stack(
       children:[
         Container(
          margin: EdgeInsets.only(top: 6),
           height: MediaQuery.of(context).size.height*0.18,
           width: MediaQuery.of(context).size.width*0.42,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [rating(),rating(),rating(),rating(),rating()],),
               Text(txt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
             ],
           ),
         ),
         Container(
           height: MediaQuery.of(context).size.height*0.13,
           width: MediaQuery.of(context).size.width*0.42,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage(pic)),
             borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28)),
             ),
             ),
             Positioned(
             right: 0,
             top: 0,
              child: CircleAvatar(
                 backgroundColor: Colors.deepOrange[700],
                 radius: 25,
                 child:  RichText(text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: ("\$"),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: (price),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ))
                ])),
               ),
             )
       ]
     );
}
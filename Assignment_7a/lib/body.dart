import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
        Container(
          height:MediaQuery.of(context).size.height*0.30,
          child: 
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 18.0),),
                   CircleAvatar(
                     radius: 50,
                     backgroundColor: Colors.red,
                     child: CircleAvatar(
                       radius: 45,
                        backgroundImage: AssetImage("assets/images/pic2.jpg"),)),
                   Padding(padding: EdgeInsets.only(right: 8.0),),
                   CircleAvatar(
                     radius: 80,
                     backgroundColor: Colors.red,
                     child: CircleAvatar(
                       radius: 75,
                        backgroundImage: AssetImage("assets/images/pic3.jpg"),)),
                   Padding(padding: EdgeInsets.only(left: 8.0),),
                   CircleAvatar(
                     radius: 50,
                     backgroundColor: Colors.red,
                     child: CircleAvatar(
                       radius: 45,
                        backgroundImage: AssetImage("assets/images/pic4.jpg"),)),
                   Padding(padding: EdgeInsets.only(right: 0.0),),
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
                text: " 6.9",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
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
                Rating(),Rating(),Rating(),Rating(),Rating(),
              ],
            ),
          ),
          Container(
             height: MediaQuery.of(context).size.height*0.22,
          width: MediaQuery.of(context).size.width*0.9,
           padding: EdgeInsets.only(top: 40, left: 20),
            child: Text("Earum assumenda iusto temporibus vel  duc odit Earum assumenda iusto temporibus vel   odit Earum assumenda iusto temporibus vel  Earum assumenda iusto temporibus vel  duc Earum assumenda iusto temporibus vel  duc",
            style: TextStyle(fontSize: 19, color: Colors.grey),),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.05,
            child: Padding(
              padding: const EdgeInsets.only(left: 17, top: 7),
              child: Text("Read more ...", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),),
            )
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width*0.9,
               height: MediaQuery.of(context).size.height*0.04,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 05),
                    child: Icon(
                      Icons.calendar_today_rounded,
                       color: Colors.deepOrange[700]),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 15),
                    child: Text("0.5km distance", style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.grey), ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 30,),
                Icon(
                  Icons.remove_circle_rounded,
                   color: Colors.deepOrange[700],),
                   SizedBox(width: 10,),
                Text("1", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Icon(Icons.add_circle_rounded, color: Colors.deepOrange[700],),
                SizedBox(width: 10,),
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )

                  ), 
                  icon:
                   Icon(Icons.shopping_cart_outlined), label:Text("Add To Cart"))
             

              ],)
          ],
        );
  }
}
Widget Rating(){
  return Container(
    child: Icon(Icons.star_border_purple500_rounded, color: Colors.yellow, size: 18.0,),
  );
  }

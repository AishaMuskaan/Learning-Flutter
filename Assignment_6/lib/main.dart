import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp", 
          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.search),
          ),
          Padding(padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.green[900],
        
      ),
      body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 50,
               color: Colors.green[900],
               child: Row(
                 children: [
                   Icon(Icons.camera_alt),
                    SizedBox(width: 30,),
                   Text("CHATS", style: TextStyle(color: Colors.white, fontSize: 16),),
                   SizedBox(width: 90,),
                   Text("STATUS", style: TextStyle(color: Colors.white, fontSize: 16),),
                    SizedBox(width: 90,),
                   Text("CALLS", style: TextStyle(color: Colors.white, fontSize: 16),),
                 ],
               ),
             ),
             Chat("Ayesha", "Hello", "10:01 AM","assets/images/pic1.jpg"),
             Chat("Samra", "Hi", "9:08 AM","assets/images/pic2.jpg"),
             Chat("Qindeel", "How are you?", "4:04 PM", "assets/images/pic3.jpg"),
             Chat("Laiba", "Look for the magic in every moment.", "7:52 AM", "assets/images/pic4.jpg"),
             Chat("Muskaan", "On the way...", "Yesterday", "assets/images/pic5.jpg")
           ],
         )
      )
      


      ) 
      );
  }
}
Widget Chat(String name, String msg, String time, String url){
  return Container(
               child: ListTile(
                leading: CircleAvatar(radius: 25, 
                backgroundImage: AssetImage(url),
                child: Container(),
                 ),
                 title: Text(name, style: TextStyle(fontWeight: FontWeight.w500),),
                 subtitle: Text(msg, style: TextStyle(color: Colors.grey),),
                 trailing: Text(time, style: TextStyle(color: Colors.grey),),
              )
    );
}
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txt = TextEditingController();
  var gettxt = "";
  var lst = [];
  edit(){
    setState(() {
     lst.replaceRange(lst.length-1, lst.length,[gettxt]);
    });
  }
  add(){
    setState(() {
      lst.add(gettxt);
    });
  }
  delete(){
    setState(() {
      lst.removeRange(0, lst.length);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               margin: EdgeInsets.only(top: 60,bottom: 30),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.65,
                      child: Center(
                        child: Stack(
  children: <Widget>[
    Text(
      'Todo List',
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6
          ..color = Colors.lightGreen.shade900,
      ),
    ),
    Text(
      'Todo List',
      style: TextStyle(
        fontSize: 45,
        color: Colors.white,
      ),
    ),
  ],
)
                      ),
                    ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: Colors.lightGreen.shade900,
                      width: 4 )
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.assignment, color: Colors.grey,),
                        hintText: ('Write your list..'),
                        hintStyle: TextStyle(fontSize: 20) 
                      ),
                      controller: txt,
                      onChanged: (value){
                        gettxt = value;
                      },
                    ),
                  ),
                ),
                 CircleAvatar(
                   radius: 25,
                   backgroundColor: Colors.lightGreen.shade900,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child:  TextButton(onPressed: (){
                              add();
                              txt.clear();
                            }, 
                            child: Center(
                              child: Text("➕", style: TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 20, 
                   color: Colors.lightGreen.shade900),),
                            ) 
                            ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 30),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.7,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
          margin: EdgeInsets.only(top: 5, left: 0),
          width: MediaQuery.of(context).size.width*0.3,
          decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightGreen.shade900,
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
          ),
          child: TextButton(onPressed: (){
                    edit();
                    txt.clear();
          },
           child: Text("Edit",
           style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color: Colors.white
           ),
           )
           ),
        ),
                
        Container(
          margin: EdgeInsets.only(top: 5, left: 0),
          width: MediaQuery.of(context).size.width*0.3,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.lightGreen.shade900,
                border: Border.all(
                  color: Colors.black,
                  width: 1
                )
          ),
          child: TextButton(onPressed: (){
                delete();
          },
           child: Text("Delete",
           style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
                 color: Colors.white,
           ),
           )
           ),
        ),
          ],
                ),
              ),
            ),
            
             ListView.builder(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount: lst.length,
               itemBuilder: (context,index){
                 return ListTile(
                      leading: Icon(Icons.circle, color: Colors.lightGreen.shade900, size: 15,),
                      title: Text(lst[index], 
                      style: TextStyle(fontSize: 15),));
               }),
          ],
        ),
      ),
    );
  }
}

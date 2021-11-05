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
      lst.replaceRange(0, lst.length,[gettxt]);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
            TextField(
              controller: txt,
              onChanged: (value){
                gettxt = value;
              },
            ),
          Row(
            children: [
              TextButton(onPressed: (){
                lst.clear();
              },
               child: Text("Delete",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
                 backgroundColor: Colors.pink[50],
                 color: Colors.black
               ),
               )
               ),
               TextButton(onPressed: (){
                 edit();
               },
                child: Text("Edit")
                )
            ],
          ),
           ListView.builder(
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             itemCount: lst.length,
             itemBuilder: (context,index){
               return Text(lst[index]);
             })
          ],
        ),
      ),
    );
  }
}
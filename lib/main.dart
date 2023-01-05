import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(MaterialApp(
    home: idcard(),
    debugShowCheckedModeBanner: false,
    routes: {secondpage.routename:(_)=>secondpage()},
  ));
}

class idcard extends StatefulWidget {
  const idcard({Key? key}) : super(key: key);

  @override
  State<idcard> createState() => _idcardState();
}

class _idcardState extends State<idcard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text("Ace ID Card")),
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
          onPressed: (){
            setState(() {
              level+=1;
            });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/luffy.jpg"),
                  radius: 40.0,
                ),
              ),

              Divider(
                height: 90,
                color: Colors.grey,
              ),
              Text("NAME",
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey)),
              SizedBox(
                height: 10,
              ),
              Text("Portgas D Ace",
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 24,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
              ),
              Text(
                "Level",
                style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text("$level",
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 24,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text("abcd@gmail.com",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 50,),
              Center(child: ElevatedButton(onPressed: (){Navigator.of(context).pushNamed(secondpage.routename);},
                  child: Text("LOGIN"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)),
            ],
          ),
        ));
  }
}

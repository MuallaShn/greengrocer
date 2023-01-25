import 'package:baunmobile1/classes.dart';
import 'package:baunmobile1/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String city ="Ankara";
String button="Mualla";
Color ankaraColor=Colors.red;
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);



  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Student mualla=Student( 1, "mualla", "sahin",170);
  Student cansu=Student( 2, "cansu", "batmaz",180);
  Student furkan=Student( 3, "furkan", "yıldırım",190);

  user elif=user(
    id: 3,
    name: "elif",
    surname: "demirezen",
    schoolName: "balikesir",
    email: "elif@gmail.com",);
  user ege=user(
    id: 6,
    name: "ege",
    surname: "egeSoyad",
    schoolName: "balikesir",
    email: "ege@gmail.com",);



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(elif.id.toString(),
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, backgroundColor: Colors.blue,
              )),

          SizedBox(
            width: mualla.heightCm,
          ),
          Text(city),
          SizedBox(
              width: furkan.heightCm
          ),


          SizedBox(width: 50),
          Text("2.Text."),
          Text("2.Text."),
          Text("2.Text."),
          SizedBox(height: 50),
          ListView(shrinkWrap: true,   children: [
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> SecondScreen()));
                },
                child: Text(
                  furkan.id.toString(),

                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Center(child: Text(cansu.name)),
            Center(child: Text(mualla.surname)),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),
            Center(child: Text("listview texti")),



          ],),

          ElevatedButton(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              if(city=="Istanbul"){
              setState(() {
               city="Ankara";
                button="mualla sahin";

              });
            }
              else{
                setState(() {
                  city="Istanbul";
                });}},
            child: Text("Button",
                style: TextStyle(color: Colors.black87, fontSize: 30.0)),
          )
        ])),
      ),
    );
  }

  SecondScreen() {}
}

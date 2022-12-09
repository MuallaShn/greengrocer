import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        body :Container(
          child: Center(
            child :Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("bu bir text'tir "),
                SizedBox(width:50 , height:50),
                Text("2.Text."),
                SizedBox(width:50 ),
                Text("2.Text."),
                SizedBox(width:50 ),
                Text("2.Text."),
                Text("2.Text."),
                Text("2.Text."),
                SizedBox(
                  height:50
                ),
                   ElevatedButton(onPressed: (){}, child: Text("button"))
              ]

            )
          ),
        ),
    );

  }

  }


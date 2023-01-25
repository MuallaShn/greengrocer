import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {

  final String productionName;
  final String url;
  final String price;
  final String productionText;

  const MyBox({
    Key? key,
    required this.productionName,
    required this.url,
    required this.price,
    required this.productionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color:Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(color: Colors.green,blurRadius: 5,spreadRadius: 5),
          ]
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
              productionName,
              style: TextStyle(color:Colors.white,fontSize: 20, decoration: TextDecoration.underline)
          ),
          SizedBox(height: 10),
          SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                url,
              )),
          Text(price,
              style: TextStyle(color:Colors.white,
                fontSize: 20,
              )),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(productionText)
          ),

        ],
      ),
    );
  }
}
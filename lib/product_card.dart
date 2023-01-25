import 'package:baunmobile1/Card_Screen.dart';
import 'package:baunmobile1/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.url,
    required this.productionName,
    required this.productionText,
    required this.price,
});
  final String productionName;
  final String productionText;
  final String url;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context,
          MaterialPageRoute(builder: (context)=>second_screen(
              productName: productionName, url: url, content: productionText)));
      },
      child: Container(
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
                height: 70,
                width: 70,
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
      ),
    );
  }
}

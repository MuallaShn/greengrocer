import 'package:flutter/material.dart';
class second_screen extends StatelessWidget {
  const second_screen ({Key? key,
    required this.productName,
    required this.url,
    required this.content, }) : super(key: key);

  final String productName;
  final String url;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(productName+" "+content,style: TextStyle(fontSize: 20)
          ),
          ),
        ],
      ),
    );
  }
}

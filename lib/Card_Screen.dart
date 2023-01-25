
import 'package:baunmobile1/product_card.dart';
import 'package:baunmobile1/second_screen.dart';
import 'package:baunmobile1/widgets/my_box_widget.dart';
import 'package:flutter/material.dart';

List<String>urlList=[
  "assets/images/tomato.png",
  "assets/images/pepper.png",
  "assets/images/patlıcan.png",
  "assets/images/limon.png",
  "assets/images/maydanoz.png",
  "assets/images/karnabahar.png",
  "assets/images/potato.png",
  "assets/images/brokoli.png",

];

List<String>priceList=[
  "5,99 TL",
  "2,99 TL",
  "7,99 TL",
  "3,99 TL",
  "1,99 TL",
  "8,99 TL",
  "12,99 TL",
  "4,99 TL",
];
Map<String,String>productionText={
  "Domates": "kırmızı bir sebzedir.",
  "Biber": "yeşil bir sebzedir.",
  "Patlıcan": "mor bir sebzedir.",
  "Limon": "sarı bir sebzedir.",
  "Maydanoz": "yeşil bir sebzedir.",
  "Karnabahar": "beyaz bir sebzedir.",
  "Patates": "kahverengi bir sebzedir.",
  "Brokoli": "yeşil bir sebzedir.",
};

class CardScreen extends StatelessWidget {
  CardScreen({Key? key,
    required String url,
    required String productionName,
    required String productionText}): super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:GridView.builder(
        itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProductCard(
            url: urlList[index],
            productionName:productionText.keys.elementAt(index),
            productionText:productionText.values.elementAt(index),
            price: priceList[index],
          ),
        );
      }),
    );
  }
}













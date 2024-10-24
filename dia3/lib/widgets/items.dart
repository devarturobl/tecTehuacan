import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  List img = [
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i=0; i<img.length; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 13.0),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 5
              )
            ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset("assets/${img[i]}.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain),
                  ),
                )
              ],
            ),
          ),
          ]
        );
  }
}

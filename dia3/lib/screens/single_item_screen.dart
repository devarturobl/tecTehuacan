import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatefulWidget {
  final String name;
  final String description;
  final double price;
  final String volumen;

  SingleItemScreen(this.name, this.description, this.price, this.volumen, {super.key});

  @override
  State<SingleItemScreen> createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {
  int coffeeCount = 1;
  late double totalPrice;

  @override
  void initState(){
    super.initState();
    totalPrice = widget.price;
  }

  void updatePrice(){
    setState(() {
      totalPrice = widget.price * coffeeCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.amber, size: 30,),
              ),
            ),
            Center(child: Image.asset("assets/${widget.name}.png", width: 200,)),
            SizedBox(height: 20),
            Text("Best Coffee", style: TextStyle(
              fontSize: 20,
            ),),
            SizedBox(height: 10),
            Text(widget.name, style: TextStyle(
              fontSize: 40,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),),
            Text(widget.description, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text(widget.volumen, style: TextStyle(fontSize: 30, color: Colors.amber),)
            ]),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){
                          if(coffeeCount > 1){
                            setState(() {
                              coffeeCount--;
                              updatePrice();
                              print(totalPrice);
                            });
                          }
                        }, 
                        icon: Icon(CupertinoIcons.minus, size: 20, color: Colors.white,) 
                        ),
                      Text(coffeeCount.toString(), style: TextStyle(fontSize: 20),),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            coffeeCount++;
                            updatePrice();
                            print(totalPrice);
                          });
                        }, 
                        icon: Icon(CupertinoIcons.plus, size: 20, color: Colors.white,) 
                        )
                    ],
                  ),
                ),
                Text('\$${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 30),)
              ],
            )
          ],
        )
      ),
    );
  }
}
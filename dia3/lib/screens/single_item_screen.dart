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
                child: Icon(Icons.arrow_back, color: Colors.white, size: 30,),
              ),
            ),
            Center(child: Image.asset("assets/${widget.name}.png", width: 200,)),
            Text("Best Coffee"),
            Text(widget.name),
            Text(widget.description),
            Text(widget.volumen),
          ],
        )
      ),
    );
  }
}
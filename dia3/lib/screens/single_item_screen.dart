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
      
    );
  }
}
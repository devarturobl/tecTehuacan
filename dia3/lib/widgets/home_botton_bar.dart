import 'package:flutter/material.dart';

class HomeBottonBar extends StatefulWidget {
  const HomeBottonBar({super.key});

  @override
  State<HomeBottonBar> createState() => _HomeBottonBarState();
}

class _HomeBottonBarState extends State<HomeBottonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home, color: Colors.amber, size: 35,),
          Icon(Icons.favorite, color: Colors.white, size: 35,),
          Icon(Icons.share, color: Colors.white, size: 35,),
          Icon(Icons.person, color: Colors.white, size: 35,),
      ]),
    );
  }
}
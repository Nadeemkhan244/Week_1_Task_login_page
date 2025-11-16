import 'package:flutter/material.dart';
import 'package:burger_pizza_resturant/Homepage.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Center(child: Text('Burger Shop')),
          ),
          backgroundColor: Color(0xFFFF8D28),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget{
  @override
  _CartpageState createState() =>  _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: Text('Cart'),
      ),
    );
  }

}
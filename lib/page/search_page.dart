import 'package:flutter/material.dart';

class searchpage extends StatefulWidget{
  @override
  _searchpageState createState() =>  _searchpageState();
}

class _searchpageState extends State<searchpage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(
        child: Text('Search'),
      ),
    );
  }

}
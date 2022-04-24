import 'package:flutter/material.dart';


class Test extends StatefulWidget{
  @override
  _TestState createState() =>  _TestState();
}
const  food = ['Chocolate','Pocky','Chips'];

class _TestState extends State<Test> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body:Center(
          child:(
            Row(
              children: [
                Column(
                  children: [
                        Image.asset('assets/2.3.jpg',
                        width: 100,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    Image.asset('assets/2.2.jpg',
                      width: 100,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                    Image.asset('assets/2.4.jpg',
                    width: 100,
                    height: 140,
                    fit: BoxFit.cover,
                    ),
                  ]
                ),
                Column(
                  children:[
                  ListView(
                      children: _buildList(),
                    ),
                  ]
                  )
                  ]
                    )
            )
        )
    );
  }

  List<Widget> _buildList() {
    return food.map((food) => _item(food)).toList();
  }
  Widget _item(String food) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(
        food,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:project2/page/My_page.dart';
import 'package:project2/page/cart_page.dart';
import 'package:project2/page/home_page.dart';
import 'package:project2/page/search_page.dart';


class TabNavigator extends StatefulWidget{
  @override
  _TabNavigatorState createState() =>  _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage:0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Homepage(),
          SearchPage(),
          Cartpage(),
          Mypage(),
          /*Test(),*/

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _defaultColor),
              activeIcon: Icon(Icons.home, color: _activeColor),
              title: Text('Home', style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activeColor),),),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: _defaultColor),
              activeIcon: Icon(Icons.search, color: _activeColor),
              title: Text('Search', style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor : _activeColor),),),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, color: _defaultColor),
              activeIcon: Icon(Icons.shopping_bag, color: _activeColor),
              title: Text('Cart', style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor : _activeColor),),),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: _defaultColor),
              activeIcon: Icon(Icons.account_circle, color: _activeColor),
              title: Text('My', style: TextStyle(
                  color: _currentIndex != 3 ? _defaultColor : _activeColor),),),
            /*BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: _defaultColor),
              activeIcon: Icon(Icons.account_circle, color: _activeColor),
              title: Text('Test', style: TextStyle(
                  color: _currentIndex != 4 ? _defaultColor : _activeColor),),),*/
          ]),
    );
  }
  }



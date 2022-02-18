import 'package:flutter/material.dart';
import 'cart_page.dart';

void main() {
  runApp(
    MaterialApp(
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => Homepage(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const SecondScreen(),
          '/third': (context) => const ThirdScreen(),
          '/fourth': (context) => const FourthScreen(),
          '/fifth':(context) => Cartpage(),
        }
    ),
  );
}


class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() =>  _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
        Image.asset(
        'assets/1.jpg',
        width: 80,
        height: 160,
        fit: BoxFit.cover,
      ),
          Text('Welcome to our online store, buy you want and get in 10 minute!!!!',
              style:TextStyle(
                color: Colors.purple,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,)
          ),
          Row(
            children:[
              Image.asset(
                'assets/2.jpg',
                width: 210,
                height: 140,
                fit: BoxFit.cover,
              ),
              ElevatedButton(
                  child: Text('Food'),
                  onPressed: ()
                  {Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondScreen())
                  );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
                  ),
                ),],),
          Row(
            children:[
              Image.asset(
                'assets/3.jpg',
                width: 210,
                height: 140,
                fit: BoxFit.cover,
              ),
              ElevatedButton(
                child: Text('Drink'),
                onPressed: ()
                {Navigator.push(context,
                    new MaterialPageRoute(
                        builder: (context) => new ThirdScreen())
                );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
                ),
              ),],),
          Row(
            children:[
              Image.asset(
                'assets/4.jpg',
                width: 150,
                height: 140,
                fit: BoxFit.cover,
              ),
              ElevatedButton(
                child: Text('Staionery'),
                onPressed: ()
                {Navigator.push(context,
                    new MaterialPageRoute(
                        builder: (context) => new FourthScreen())
                );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
                ),
              ),],),
        ],
    ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
      ),
      body: Center(
        child:(
          Column(
              children: [
                Row(
                children:[Image.asset('assets/2.1.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Chocolate  THB 20  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),],),
                Row(
                  children:[
                    Image.asset('assets/2.2.jpg',
                  width: 100,
                  height: 140,
                fit: BoxFit.cover,
                  ),
                    Text('  Pocky        THB 30  ',style: TextStyle(fontSize: 20),),
                  ElevatedButton(child: const Text('I want!!!',),
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => Cartpage()));
                    },
                  ),
                  ],
                ),
                Row(
                  children:[
                  Image.asset('assets/2.3.jpg',
                    width: 100,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                  Text('  Chips        THB 15  ',style: TextStyle(fontSize: 20),),
                  ElevatedButton(child: const Text('I want!!!'),
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => Cartpage()));
                    },
                  ),
                  ],
                ),
                Row(
                children:[
                Image.asset('assets/2.4.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Bread        THB 10  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ],
                ),
        ],
    )
    ),
    ),
    );
  }

  }

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drink'),
      ),
      body: Center(
        child:(
            Column(
              children: [
            Row(
            children:[
                Image.asset('assets/3.1.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Milk tea      THB 40 ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ]
            ),
            Row(
            children:[
                Image.asset('assets/3.2.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Coke           THB 15  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ]
            ),
            Row(
            children:[
                Image.asset('assets/3.3.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Juice           THB25  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ]
            ),
            Row(
            children:[
                Image.asset('assets/3.4.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Water          THB 10  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
              ]
            ),
              ],
            )
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staionery'),
      ),
      body: Center(
        child:(
            Column(
              children: [
                Row(
                children:[
                Image.asset('assets/4.1.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Eraser          THB 5  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ]
                ),
                Row(
                children:[
                Image.asset('assets/4.2.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Pen            THB 20  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ]
                ),
                Row(
                children:[
                Image.asset('assets/4.3.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Tape           THB 10  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ],
                ),
                Row(
                children:[
                Image.asset('assets/4.4.jpg',
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text('  Ruler          THB 10  ',style: TextStyle(fontSize: 20),),
                ElevatedButton(child: const Text('I want!!!'),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Cartpage()));
                  },
                ),
                ],
                ),
              ],
            )
        ),
      ),
    );
  }
}

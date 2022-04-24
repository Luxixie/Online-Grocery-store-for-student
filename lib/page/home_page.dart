import 'package:flutter/material.dart';
import 'package:project2/Constants.dart';
import 'package:project2/model/shop_model.dart';
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
          '/fifth': (context) => Cartpage(),
        }),
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
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
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Welcome to our online store, buy you want and get in 10 minute!!!!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 0.5,
            color: Colors.black12,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/2.jpg',
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const Expanded(child: SizedBox()),
                ElevatedButton(
                  child: const Text('Food'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18))),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.black12,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/3.jpg',
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const Expanded(child: SizedBox()),
                ElevatedButton(
                  child: const Text('Drink'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 18))),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.black12,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/4.jpg',
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const Expanded(child: SizedBox()),
                ElevatedButton(
                  child: Text('Staionery'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new FourthScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 18))),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.black12,
          ),
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
        child: ListView(
          children: [
            ..._buildListView(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildListView(BuildContext context) {
    List<Widget> list = [];
    Constants.foods.forEach((key, value) {
      //每一条数据
      list.add(_buildItemView(context, value));
      //分割线
      list.add(Container(
        height: 0.5,
        color: Colors.black12,
      ));
    });
    return list;
  }

  Widget _buildItemView(BuildContext context, ShopModel shopModel) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            '${shopModel.image}',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '${shopModel.name}',
            style: const TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'THB ${shopModel.price}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            child: const Text('I want'),
            onPressed: () {
              int count = Constants.shops[shopModel] ?? 0;
              Constants.shops[shopModel] = count + 1;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cartpage()));
            },
          ),
        ],
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
        child: ListView(
          children: [
            ..._buildListView(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildListView(BuildContext context) {
    List<Widget> list = [];
    Constants.drinks.forEach((key, value) {
      //每一条数据
      list.add(_buildItemView(context, value));
      //分割线
      list.add(Container(
        height: 0.5,
        color: Colors.black12,
      ));
    });
    return list;
  }

  Widget _buildItemView(BuildContext context, ShopModel shopModel) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            '${shopModel.image}',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '${shopModel.name}',
            style: const TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'THB ${shopModel.price}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            child: const Text('I want'),
            onPressed: () {
              int count = Constants.shops[shopModel] ?? 0;
              Constants.shops[shopModel] = count + 1;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cartpage()));
            },
          ),
        ],
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
        child: ListView(
          children: [
            ..._buildListView(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildListView(BuildContext context) {
    List<Widget> list = [];
    Constants.staionerys.forEach((key, value) {
      //每一条数据
      list.add(_buildItemView(context, value));
      //分割线
      list.add(Container(
        height: 0.5,
        color: Colors.black12,
      ));
    });
    return list;
  }

  Widget _buildItemView(BuildContext context, ShopModel shopModel) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            '${shopModel.image}',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '${shopModel.name}',
            style: const TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'THB ${shopModel.price}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            child: const Text('I want'),
            onPressed: () {
              int count = Constants.shops[shopModel] ?? 0;
              Constants.shops[shopModel] = count + 1;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cartpage()));
            },
          ),
        ],
      ),
    );
  }
}

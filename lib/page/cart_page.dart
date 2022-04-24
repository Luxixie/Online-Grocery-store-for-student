import 'package:flutter/material.dart';
import 'package:project2/model/shop_model.dart';

import '../Constants.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Cartpage',
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => Cartpage(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const SecondScreen(),
        }),
  );
}

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  List<Widget> _buildListView(BuildContext context) {
    List<Widget> list = [];
    Constants.shops.forEach((key, value) {

      list.add(_buildItemView(context, key, value));

      list.add(Container(
        height: 0.5,
        color: Colors.black12,
      ));
    });
    return list;
  }

  Widget _buildItemView(BuildContext context, ShopModel shopModel, int count) {
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
              child: Column(
                children: [
                  Text(
                    'THB ${shopModel.price}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Number ${count}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            child: Text('Payment'),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
            },
          ),
        ],
      ),
    );
  }

  double priceAll = 0;

  @override
  void initState() {
    super.initState();
    Constants.shops.forEach((key, value) {
      priceAll = priceAll + ((key.price ?? 0) * value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ..._buildListView(context),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.black12,
          ),
          Container(
            height: 60,
            child: Row(
              children: [
                Expanded(child: const SizedBox()),
                Text(
                  'THB ${priceAll}',
                  style: const TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text('Payment'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cart'),
//       ),
//       body: Container(
//           child: Column(
//               children: [
//                 Row(
//                   children:[ Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                             Text(
//                             ' Product List',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 40
//                             ),
//                           ),
//                         Image.asset('assets/3.2.jpg',
//                           width: 100,
//                           height: 140,
//                           fit: BoxFit.cover,
//                         ),
//                         Text('Coke           THB 15  ',style: TextStyle(fontSize: 20),),
//                         Text(' -------------------------------'),
//                         Text('Total Price: THB 15',style: TextStyle(fontSize: 20),)
//                      ]
//                   )
//                   ]
//                   ),
//                   Row(
//                     children: [
//                         ElevatedButton(
//                           child: Text('Payment'),
//                           onPressed: () {
//                             Navigator.push(context,
//                                 new MaterialPageRoute(
//                                     builder: (context) => const SecondScreen())
//                             );
//                           }
//                         )
//                     ]
//                     )
//                     ],
//           )
//           )
//   );
// }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment'),
        ),
        body: Column(children: <Widget>[
          Container(
              height: 400,
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Text(
                  'Choose the payment method',
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  'assets/6.jpg',
                  width: 300,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                Text(
                  '------------------------',
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  'assets/7.jpg',
                  width: 300,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                Text(
                  '------------------------',
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  'assets/8.jpg',
                  width: 300,
                  height: 70,
                  fit: BoxFit.cover,
                )
              ])),
        ]));
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Mypage',
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => Mypage(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const SecondScreen(),
          '/third': (context) => const ThirdScreen(),
          '/fourth': (context) => const FourthScreen(),
          '/fifth': (context) => const FifthScreen(),
          '/sixth': (context) => const SixthScreen(),
          '/seventh': (context) => const SeventhScreen(),
        }),
  );
}

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    '         Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                Align(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Please input student ID",
                        helperText: "Student ID",
                        prefixIcon: new Icon(Icons.account_circle),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Please input your Password",
                        helperText: "Password",
                        prefixIcon: new Icon(Icons.visibility),
                      ),
                    ),
                  ]),
                )),
                Align(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: MaterialButton(
                      color: Colors.blue,
                      minWidth: double.infinity,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()));
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeventhScreen()));
                        },
                        child: Text("     Sign in        "),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                                width: 3, color: Colors.lightBlue.shade50),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("     Forget the password"),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                                width: 3, color: Colors.lightBlue.shade50),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'My Account',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Account'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/1.jpg',
              width: 200,
              height: 140,
              fit: BoxFit.cover,
            ),
            titleSection,
          ],
        ),
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
        title: const Text('My Accoount'),
      ),
      body: Column(children: [
        Row(children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/5.jpg'),
            radius: 60.0,
          ),
          Expanded(
            child: Text(
              'Name: Luxi           Account: 6288203   ',
              style: TextStyle(
                fontSize: 25,
                backgroundColor: Colors.yellowAccent,
              ),
            ),
          ),
        ]),
        Row(
          children: [
            ElevatedButton(
              child: Text('Information'),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ThirdScreen()));
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              child: Text('Address  '),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new FourthScreen()));
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              child: Text('History order'),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new FifthScreen()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 20))),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              child: Text('Settting'),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SixthScreen()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ]),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order No.'),
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(
          child: const Text('DONE'),
          onPressed: () {
            Navigator.pop(context, '/');
            Navigator.pop(context, '/');
          },
        )
      ])),
    );
  }
}

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order No.'),
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(
          child: const Text('DONE'),
          onPressed: () {
            Navigator.pop(context, '/');
            Navigator.pop(context, '/');
          },
        )
      ])),
    );
  }
}

class SixthScreen extends StatelessWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order No.'),
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(
          child: const Text('DONE'),
          onPressed: () {
            Navigator.pop(context, '/');
            Navigator.pop(context, '/');
          },
        )
      ])),
    );
  }
}

class SeventhScreen extends StatelessWidget {
  const SeventhScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    '         Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                Align(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Please input Email",
                        helperText: "Email",
                        prefixIcon: new Icon(Icons.mail),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Please input your Phone number",
                        helperText: "Phone number",
                        prefixIcon: new Icon(Icons.add_call),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Please input your Student ID",
                        helperText: "Student ID",
                        prefixIcon: new Icon(Icons.school),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Please input your Password",
                        helperText: "Password",
                        prefixIcon: new Icon(Icons.visibility),
                      ),
                    ),
                  ]),
                )),
                Align(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: MaterialButton(
                      color: Colors.blue,
                      minWidth: double.infinity,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new SecondScreen()));
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mypage()));
                        },
                        child: Text("     Log in        "),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                                width: 3, color: Colors.lightBlue.shade50),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("     Forget the password"),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                                width: 3, color: Colors.lightBlue.shade50),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/1.jpg',
            width: 200,
            height: 140,
            fit: BoxFit.cover,
          ),
          titleSection,
        ],
      ),
    );
  }
}

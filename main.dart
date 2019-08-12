import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aptitude',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Aptitude'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            ImageBanner('images/jaba.jpg'),
//            ImageBanner("assets/images/flutter.png"),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/flutter.png"),
              backgroundColor: Colors.transparent,
//              child: Text("heh"),
            ),
            SizedBox(height: 50),
//            CustomInputField(Icon(Icons.person), "Usernames"),

            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
//                  suffixText: 'USD',
//                  helperText: 'Enter your name',
                  helperStyle: const TextStyle(color: Colors.red),
//                  suffixStyle: const TextStyle(color: Colors.green),
                ),
                style: TextStyle(
                  decorationThickness: 0.0,
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "please enter some text";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
//                  suffixText: 'USD',
                  helperText: String.fromEnvironment("as"),
                  helperStyle: const TextStyle(color: Colors.red),
//                  suffixStyle: const TextStyle(color: Colors.green),
                ),
                style: TextStyle(
                  decorationThickness: 0.0,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    disabledColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.00)),
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    disabledColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.00)),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

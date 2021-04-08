import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'regis.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    routes: {'/': (context) => MyApp(), '/second': (context) => Regis()},
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => CounterProvider(counter: 0),
        child: MyHomePage(title: "My Home"),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    TextEditingController idController = new TextEditingController();
    TextEditingController passController = new TextEditingController();
    Image.asset('image/logologin.png');
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Image.asset(
                'assets/images/logologin.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 360,
              child: Card(
                  color: Colors.pink[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: Icon(Icons.credit_card)),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: Icon(Icons.credit_card)),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Regis(),
                              ));
                        },
                        child: Text('Take this'),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class CounterProvider with ChangeNotifier {
  int counter;
  CounterProvider({this.counter = 0});

  increment() {
    counter++;
    notifyListeners();
  }
}

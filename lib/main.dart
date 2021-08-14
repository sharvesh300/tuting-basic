import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController controller = TextEditingController();
  String email = "";

  void replace() {
    setState(() {
      email = controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text("My App"),
        ),
        leading: IconButton(
          icon: Icon(Icons.airline_seat_legroom_normal_sharp),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: replace,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40),
              child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      InputDecoration(labelText: "name", hintText: "NAME")),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              email,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }
}

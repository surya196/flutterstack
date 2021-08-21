import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stacks(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Stack'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.amber,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black38,
                          )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1, child: Container(color: Colors.black38)),
                      Flexible(flex: 1, child: Container(color: Colors.amber)),
                    ],
                  )),
            ],
          ),
          ListView.builder(
              itemCount: 30 + 1,
              itemBuilder: (context, index) {
                return Center(
                    child: Text(
                  'number $index ',
                  style: TextStyle(fontSize: 35, color: Colors.black87),
                ));
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {},
              child: Text('Button'),
            ),
          ),
        ],
      ),
    );
  }
}

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index stack'),
      ),
      body: IndexedStack(
        index: 1,
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                          child: Text(
                            'index',
                            style: TextStyle(fontSize: 50),
                          ),
                          color: Colors.black38)),
                  Flexible(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,

                          child: Text(
                            'stack 0',
                            style: TextStyle(fontSize: 50),
                          ),
                          color: Colors.red)),
                ],
              )),
          Center(
              child: Text(
            'Index stack 1',
            style: TextStyle(fontSize: 50),
          )),
        ],
      ),
    );
  }
}

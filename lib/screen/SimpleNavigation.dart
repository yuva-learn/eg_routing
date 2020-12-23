import 'package:example_routing/screen/Screen1.dart';
import 'package:example_routing/screen/Screen2.dart';
import 'package:flutter/material.dart';

class SimpleNavigation extends StatefulWidget {
  @override
  _SimpleNavigationState createState() => _SimpleNavigationState();
}

class _SimpleNavigationState extends State<SimpleNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Navigation"),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Center(
      child: Wrap(
        direction: Axis.vertical,
        spacing: 20,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(),
                ),
              );
            },
            child: Text("Screen 1"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
            child: Text("Screen 2"),
          ),
        ],
      ),
    );
  }
}

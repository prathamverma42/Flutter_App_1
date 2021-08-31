import 'package:flutter/material.dart';
import 'package:test/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  var str = "My";
  var numerical = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $str new App $numerical'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

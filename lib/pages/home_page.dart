import 'package:flutter/material.dart';
import 'package:test/models/catalog.dart';
import 'package:test/widgets/drawer.dart';
import 'package:test/widgets/item_widget.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  var str = "My";
  var numerical = 1;

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          // itemCount: 8,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
          // itemBuilder: (context, index) {
          //   // return ItemWidget();
          //   return Column(
          //     children: [
          //       Container(
          //         height: 50,
          //         width: 350,
          //         color: Colors.teal,
          //       ),
          //       SizedBox(
          //         height: 10,
          //       )
          //     ],
        ),
      ),

      //     Center(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: 100,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //       // ),
      //       SizedBox(
      //         height: 100,
      //       ),
      //       Text(
      //         "Welcome to My First App",
      //         style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(
      //         height: 50,
      //       ),
      //       Container(
      //         width: 200.0,
      //         height: 50,
      //         child: Container(
      //           height: 150.0,
      //           color: Colors.teal,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //         child: Divider(
      //           color: Colors.red,
      //           thickness: 1.2,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}

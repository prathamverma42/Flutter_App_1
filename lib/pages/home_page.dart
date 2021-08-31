import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test/models/catalog.dart';
import 'package:test/widgets/drawer.dart';
import 'package:test/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var jsonData = await rootBundle.loadString('assets/files/catalog.json');
    // ignore: non_constant_identifier_names
    var EncodedData = jsonDecode(jsonData);
    var productdata = EncodedData["products"];
    // print(productdata);
    CatalogModel.items = List.from(productdata)
        .map<Item>(
          (item) => Item.fromMap(item),
        )
        .toList();
    setState(() {});
  }

  var str = "My";

  var numerical = 1;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Widget build(BuildContext context) {
    // final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                // itemCount: 8,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
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
              )
            : Center(
                child: CircularProgressIndicator(),
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

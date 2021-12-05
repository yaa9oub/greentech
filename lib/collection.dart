import 'package:flutter/material.dart';
import 'package:greentech/drawer.dart';
import 'package:greentech/purchasedproducts.dart';
import 'package:greentech/usedproducts.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text("Data Collection"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Purchased Products "),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Used Products "),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [PurchasedProduct(), UsedProduct()],
        ),
      ),
    );
  }
}

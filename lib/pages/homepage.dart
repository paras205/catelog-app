import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/modals/catelog.dart';
import 'package:flutter_catelog/widgets/drawer.dart';
import 'package:flutter_catelog/widgets/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
          itemCount: dummyList.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

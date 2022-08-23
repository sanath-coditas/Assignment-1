import 'package:flutter/material.dart';
import 'package:assignment_food_delivery_app/Item.dart';
import 'cart_screen.dart';

class Item {
  bool isItemAdded;
  int itemNum;
  Item({required this.itemNum, required this.isItemAdded});
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: const Text(
              'Domino\'s Pizza',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Cart()));
                },
                icon: const Icon(Icons.shopping_cart_outlined),
                color: Colors.black,
              )
            ],
          ),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) => ItemCardWidget(
                  item: Item(itemNum: index+1, isItemAdded: false)))),
    );
  }
}

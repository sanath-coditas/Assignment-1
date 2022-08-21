import 'package:flutter/material.dart';
import 'package:assignment_food_delivery_app/Item.dart';
import 'cart_screen.dart';
class Item{
  bool isItemAdded;
  int itemNum;
  Item({required this.itemNum,required this.isItemAdded});
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
          title: const Text('Domino\'s Pizza',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          actions: [
            IconButton(onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>const Cart())
                    );
            }, icon: const Icon(Icons.shopping_cart_outlined),
               color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
             ItemCardWidget(item: Item(itemNum: 1, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 2, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 3, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 4, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 5, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 6, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 7, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 8, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 9, isItemAdded: false)),
            ItemCardWidget(item: Item(itemNum: 10, isItemAdded: false)),
          ],
        ),
      ),
    );
  }
}


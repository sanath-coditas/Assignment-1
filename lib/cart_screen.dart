import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  static int itemsInCart = 0;
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Scaffold(
       appBar: AppBar(
         centerTitle: false,
         title: const Text('Cart'),
         leading: IconButton(
           icon: const Icon(Icons.arrow_back_ios),
           onPressed: (){
             Navigator.pop(context);
           },
         ),
       ),
       body: Center(child: Text('Your cart has $itemsInCart items.',
       style: const TextStyle(fontSize: 30),
       ),
       ),
     )
    );
  }
}

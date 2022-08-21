import 'package:flutter/material.dart';
import 'items_screen.dart';
import 'cart_screen.dart';
class ItemCardWidget extends StatefulWidget {
  Item item;
  ItemCardWidget({required this.item});
  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState(item: item);
}
class _ItemCardWidgetState extends State<ItemCardWidget> {
  Item item;
  _ItemCardWidgetState({required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 0.2)
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Text('Item ${item.itemNum}',style: TextStyle(fontSize: 30),)),
                const Expanded(child: Text('Tomato sauce, fresh cheese,\ncorn, basil',style: TextStyle(fontSize: 15),)),
                Expanded(
                  child: Row(
                    children: const [
                      Icon(Icons.star,color: Colors.yellow,size: 30,),
                      Icon(Icons.star,color: Colors.yellow,size: 30,),
                      Icon(Icons.star,color: Colors.yellow,size: 30,),
                      Icon(Icons.star,color: Colors.yellow,size: 30,),
                      Icon(Icons.star_border,size: 30,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.height*0.13,
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: const Image(image: NetworkImage('https://images.unsplash.com/photo-1628840042765-356cda07504e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVwcGVyb25pJTIwcGl6emF8ZW58MHx8MHx8&w=1000&q=80'),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(item.isItemAdded) {
                      item.isItemAdded = false;
                      Cart.itemsInCart -= 1;
                    }
                    else {
                      item.isItemAdded = true;
                      Cart.itemsInCart += 1;
                    }
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.height*0.13,
                  decoration: BoxDecoration(
                      border: Border.all(color: (item.isItemAdded) ? Colors.green : Colors.red),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    (item.isItemAdded)? 'ADDED' : 'ADD',
                    style: TextStyle(fontSize: 20,
                      color: (item.isItemAdded) ? Colors.green : Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

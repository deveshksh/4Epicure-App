import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart' show Cart;
import '../widgets/cart_item.dart' ;
import '../providers/orders.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        ),
        body: Column(children: <Widget>[
          Card(margin: EdgeInsets.all(15),child: Padding(padding: EdgeInsets.all(8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
            Text('Total',style: TextStyle(fontSize:20),),
            Spacer(),
            // SizedBox(width: 10),
            Chip(
              label: Text('\$${cart.totalAmount}'), 
            labelStyle: TextStyle(color: const Color(0xFFFFB100),),
            backgroundColor: Theme.of(context).primaryColor,
            ),
            TextButton(
              child: Text('Order now'), 
              onPressed: () {
                Provider.of<Orders>(context, listen: false).addOrder(cart.items.values.toList() , cart.totalAmount);
                cart.clear();
              } ,
              style: TextButton.styleFrom(
              primary: const Color(0xFFFFB100), // Text Color
              ),
            ),
          ],
          ),
          ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: cart.itemCount, 
              itemBuilder: ((context, i) => CartItem(
                cart.items.values.toList()[i].id, 
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price , 
                cart.items.values.toList()[i].quantity, 
                cart.items.values.toList()[i].title,) ),),)
        ],)
      );
  }
}
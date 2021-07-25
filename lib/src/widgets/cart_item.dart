import 'package:flutter/material.dart';
import 'package:planete_pizza/src/shared/styles.dart';
// import '../models/cart_provider.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartItem extends StatelessWidget {

  final int id;
  final int productId;
  final String title;
  final double price;
  final int quantity;
  final String image;

  CartItem(this.id, this.productId, this.price, this.quantity, this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: ValueKey(id),
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete, 
          color: Colors.white,
          size: 33,
        ),
      ),

      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },

      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 20),
          child: ListTile(
            title: Text(title, style: h6),
            subtitle: Column(
              
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Prix U. : ${price.toInt()} F',),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Total : ${(price * quantity).toInt()} F'),
                  ],
                ),
              ],
            ),

            leading:  Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  image
                ),
            ),

            trailing: Text('x$quantity'),
          ),
        ),
      ),
    );
  }
}
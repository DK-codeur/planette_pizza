import 'package:flutter/material.dart';
import 'package:planete_pizza/src/shared/colors.dart';
// import '../models/cart_provider.dart';
import 'package:provider/provider.dart';

// import '../providers/orders.dart';
import '../providers/cart_provider.dart';
import '../widgets/cart_item.dart' as ci;


class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mon panier'),
        backgroundColor: primaryColor,
      ),

      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total', style: TextStyle(fontSize: 22),),
                  Spacer(),
                  Chip(
                    label: Text(
                      '${cart.totalAmount.toInt()} Fg', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    ), 
                    backgroundColor: primaryColor,
                  ),

                  // FlatButton(
                  //   textColor: Theme.of(context).primaryColor,
                  //   child: Text('Order Now !'),
                  //   onPressed: () {
                  //     Provider.of<Orders>(context, listen: false).addOrder(
                  //       cart.items.values.toList(), 
                  //       cart.totalAmount
                  //     );

                  //     cart.clear();
                  //   },
                  // )

                ],
              ),
            ),
          ),

          SizedBox(height: 10,),

          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, i) => ci.CartItem(
                cart.items.values.toList()[i].id,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].title,
                cart.items.values.toList()[i].image,
              ),
            )
          )
        ],
      ),

       bottomNavigationBar: new Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total', style: TextStyle(fontSize: 22)),
                subtitle: Text('${cart.totalAmount.toInt()} Fg', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              ),
            ),

            Expanded(
              child: RaisedButton(
                color: primaryColor,
                child: new Text('Je commande', style: TextStyle(color: Colors.white),),

                onPressed: dialogueConfirm
              ),
            )
          ],
        ),
      ),
    );
  }

   Future<Null> dialogueConfirm() async {
    return showDialog(
        context: context,
        barrierDismissible: false,

        builder: (BuildContext context) {
          return new SimpleDialog(
            title: Text(
              'Confirmez votre commande', 
              style: TextStyle(fontSize: 23,)
            ),
            contentPadding: EdgeInsets.all(12.0),
            
            children: <Widget>[
              
              Column(

                children: <Widget>[
                  SizedBox(height: 20),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Nom complet",
                      icon: Icon(Icons.account_box),
                      hintStyle: TextStyle(
                        color: Color(0xFFBDC2CB),
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  SizedBox(height: 25,),

                   TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Lieu de livraison",
                      icon: Icon(Icons.motorcycle),
                      hintStyle: TextStyle(
                        color: Color(0xFFBDC2CB),
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  SizedBox(height: 25,),

                   TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Téléphone",
                      icon: Icon(Icons.phone_iphone),
                      hintStyle: TextStyle(
                        color: Color(0xFFBDC2CB),
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'Annuler',
                          style: TextStyle(),
                        ),
                        onPressed: ()=> Navigator.pop(context),
                      ),

                      RaisedButton(
                        color: primaryColor,
                        child: Text(
                          'Je confirme',
                          style: TextStyle(color: Colors.white)
                        ),
                        onPressed: () {},
                      )

                      
                    ],
                  )

                ],

              )
              
                
            ],
          );
        }
    );
  }
}
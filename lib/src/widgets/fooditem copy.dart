import 'package:flutter/material.dart';
import 'package:planete_pizza/src/providers/product.dart';
import 'package:provider/provider.dart';
import '../screens/productPage.dart';
import '../shared/colors.dart';
import '../shared/styles.dart';


class FoodItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return Hero(
      tag: 'img',
          child: Container(
        width: 200,
        height: 200,
        // color: Colors.red,
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: <Widget>[
           
               InkWell( //image

                onTap: () {
                  Navigator.of(context).pushNamed(
                    ProductPage.routeName,
                    arguments: product.idPdt
                  );
                },

                  
                  child: Container(
                    width: 205,
                    height: 185,
                  
                    child: Card(
                        color: white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                          child: Container(
                        
                            child: Image.asset(
                              product.image,
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            )
                        )
                    )
                  ),
              ),

            // Positioned(
            //   bottom: 64,
            //   right: 8,
              // child: (menuPrice != null) ? Snac() : SizedBox(width: 0,)
              // child: FlatButton(
              //   padding: EdgeInsets.all(20),
              //   shape: CircleBorder(),
              //   onPressed: onLike,
              //   child: Icon(
              //     (food.userLiked) ? Icons.favorite : Icons.favorite_border,
              //     color: (food.userLiked) ? primaryColor : darkText,
              //     size: 30,
              //   ),
              // ),
            // ),

            Positioned(
              bottom: 8,
              left: 10,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(product.name, style: foodNameText),
                  Text('${product.price.toInt()} F', style: priceText),
                ],
              )
            ),
            Positioned( 
                top: 10,
                left: 10,
                child: (product.discount != null)
                    ? Container(
                        padding: EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(50)),
                        child: Text('-' + product.discount.toString() + '%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      )
                    : SizedBox(width: 0))
          ],
        ),
      ),
    );
  } //build


  // void selectFood(BuildContext context) {
    // Navigator.of(context).pushNamed(
    //   ProductPage.routeName,
    //   arguments: {
    //     'idItem': idItem,
        // 'name': name,
        // 'isMenu': isMenu,
        // 'price': price,
        // 'image': image,
        // 'discount': discount
      // }
    // );


  }
  




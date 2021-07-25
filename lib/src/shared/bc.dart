import 'package:flutter/material.dart';
import 'package:planete_pizza/src/providers/product.dart';

import 'colors.dart';
import 'styles.dart';


Widget buildContainer(BuildContext context, Product product, tapped) {
    return Container(
    width: 200,
    height: 200,
    // color: Colors.red,
    margin: EdgeInsets.only(left: 20),
    child: Stack(
      children: <Widget>[

          Container(
            width: 180,
            height: 180,
            child: RaisedButton(
                color: white,
                elevation:  12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: tapped,
                child: Hero(
                    transitionOnUserGestures: true,
                    tag:"image",
                    child: Image.asset(product.image,
                        width: 130)
                )
            )
          ),
          
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
                  top: 5, left: 10, right: 10, bottom: 5
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Text(
                  '-' + product.discount.toString() + '%',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700)
                ),
              )
              : SizedBox(width: 0)
          )
      ],
    ),
  );
  }
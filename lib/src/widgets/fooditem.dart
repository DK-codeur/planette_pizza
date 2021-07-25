import 'package:flutter/material.dart';
import 'package:planete_pizza/src/providers/product.dart';
import 'package:planete_pizza/src/shared/bc.dart';
import 'package:provider/provider.dart';
import '../screens/productPage.dart';
import '../shared/colors.dart';
import '../shared/styles.dart';


class FoodItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return buildContainer(
      context, 
      product,
      () {
        Navigator.of(context).pushNamed(
          ProductPage.routeName,
          arguments: product.idPdt
        );
      },
      
    );
  }

}


  
  




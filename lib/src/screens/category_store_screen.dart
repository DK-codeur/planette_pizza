import 'package:flutter/material.dart';
import 'package:planete_pizza/src/providers/cart_provider.dart';
import 'package:planete_pizza/src/providers/datas_provider.dart';
import 'package:planete_pizza/src/shared/colors.dart';
import 'package:planete_pizza/src/widgets/badge.dart';
import 'package:planete_pizza/src/widgets/category_store_item.dart';
import 'package:provider/provider.dart';

import 'cart_screen.dart';


class CategoryStoreScreen extends StatelessWidget {
  static const routeName = '/categoryStore';

  @override
  Widget build(BuildContext context) {

    // final reqProdCategory = foods.where((prodcat) => prodcat.cat == categoryId).toList();
    final categoryId = ModalRoute.of(context).settings.arguments as int;
    final reqProdCategory = Provider.of<ProductsProvider>(context).foodsByCat(categoryId);
    final category = Provider.of<CategoriesProvider>(context).findById(categoryId);
    final categoryName = category.name;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: primaryColor,

        actions: <Widget>[
          Consumer<Cart>(
              builder: (_, cart, ch) => Badge(
                value: cart.itemCount.toString(),
                child: ch,
              ),

              child: IconButton(
                icon: Icon(Icons.shopping_basket, color: Colors.white,),
                iconSize: 27,
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            )
        ],
      ),
      
      body: ListView.builder(
        itemCount: reqProdCategory.length,
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: reqProdCategory[index],
          child: CategoryStoreItem(
            //all prop id, title...
          ),
        ),

        // itemCount: reqProdCategory.length,
        // itemBuilder: (ctx, index) {
        //   return CategoryStoreItem(
        //     idcat: reqProdCategory[index].idPdt,
        //     name: reqProdCategory[index].name,
        //     isMenu: reqProdCategory[index].isMenu,
        //     price: reqProdCategory[index].price,
        //     menuPrice: reqProdCategory[index].menuPrice,
        //     image: reqProdCategory[index].image,
      )
        // },
      // )
    );
  }
}
import 'package:flutter/material.dart';
// import 'package:hit_fast_food/src/providers/datas_provider.dart';
import 'package:planete_pizza/src/widgets/deals.dart';
// import 'package:provider/provider.dart';
import '../widgets/headerTopCategories.dart';


class Store extends StatefulWidget {
  static const routeName = '/store';

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          HeaderCategoriesTop(),

          Deals('Pizza', () {}, 1),
          // Deals('Sandwich Froid', () {}, 2),
          // Deals('Gaufres', () {}, 3),
          // Deals('Crèpes', () {}, 4),

           

        ],
      ),
    );

  }
}

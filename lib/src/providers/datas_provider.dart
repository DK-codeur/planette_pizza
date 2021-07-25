// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

import './product.dart';
import './category.dart';


//Category Provider

 class ProductsProvider with ChangeNotifier{
    List<Product> _foods = [

    //burger
    Product(
        idPdt: 1,
        name: "Pizza Marguerita",
        image: "images/pizza marguerita.jpg",
        price: 50000,
        menuPrice: 35000,
        isMenu: 'mini',
        cat: 1,
        // userLiked: true,
        // discount: 10
    ),
    Product(
        idPdt: 2,
        name: "Pizza Queen",
        image: "images/pizza queen.jpg",
        price: 70000,
        menuPrice: 40000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: false,
        discount: null
    ),
    Product(
      idPdt: 3,
      name: "Pizza Thon",
      image: 'images/pizza thon.jpg',
      price: 60000,
      menuPrice: 35000,
      isMenu: 'mini',
      cat: 11,
      // userLiked: false,
    ),
    Product(
        idPdt: 4,
        name: "Pizza Hot & Spicy",
        image: "images/pizza hot spicy.png",
        price: 40000,
        menuPrice: 40000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3
    ),

    Product(
        idPdt: 5,
        name: "Pizza Hawaï",
        image: "images/pizza hwai.jpg",
        price: 90000,
        menuPrice: 45000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3
    ),

     Product(
        idPdt: 6,
        name: "Pizza Bolognaise",
        image: "images/pizza bogolaise.jpg",
        price: 90000,
        menuPrice: 45000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3
    ),

    Product(
        idPdt: 7,
        name: "Pizza 4 Fromage",
        image: "pizza 4frommage.jpg",
        price: 90000,
        menuPrice: 45000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3
    ),

    Product(
        idPdt: 8,
        name: "Pizza Poulet Barbecue",
        image: "images/pizza poulet b.jpg",
        price: 80000,
        menuPrice: 40000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3
    ),

    //chicken 
    Product(
        idPdt: 9,
        name: "Pizza Pepperoni",
        image: "images/pizza peperoni.jpg",
        price: 100000,
        menuPrice: 50000,
        isMenu: 'mini',
        cat: 11,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 10,
        name: "Pizza Linguini Di Marré",
        image: "images/pizza linguini di m.jpg",
        price: 4000,
        menuPrice: 120000,
        isMenu: null,
        cat: 11,
        // userLiked: true,
        // discount: 3 PERI-PERI WINGS X6
    ),

    Product(
        idPdt: 11,
        name: "Pizza Planète",
        image: "pizza planet.jpg",
        price: 110000,
        menuPrice: null,
        isMenu: null,
        cat: 11,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
      idPdt: 12,
      name: "Pizza Cheezy Crust",
      image: "images/pizza cheezy.jpg",
      price: 130000,
      menuPrice: null,
      isMenu: null,
      cat: 11,
      // userLiked: true,
      // discount: 3 
  ),

  Product(
      idPdt: 13,
      name: "Thon Mayonnaise",
      image: "images/sandwich thon mayonnaise.jpg",
      price: 35000,
      menuPrice: null,
      isMenu: null,
      cat: 2,
      // userLiked: true,
      // discount: 3 
  ), 

    Product(
        idPdt: 14,
        name: "Thon Cury",
        image: "images/SAND THON CRUCY.jpg",
        price: 35000,
        menuPrice: null,
        isMenu: null,
        cat: 2,
        // userLiked: true,
        // discount: 3 
    ),


    Product(
        idPdt: 16,
        name: "Blanc de Poulet",
        image: "images/sand_blanc_poulet.jpg",
        price: 40000,
        menuPrice: null,
        isMenu: null,
        cat: 2,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 17,
        name: "Nature",
        image: "images/gaufre nature.jpg",
        price: 15000,
        menuPrice: null,
        isMenu: null,
        cat: 3,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 18,
        name: "Topping",
        image: "images/gaufre topping.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 3,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 19,
        name: "Nature",
        image: "images/crep nature.png",
        price: 15000,
        menuPrice: null,
        isMenu: null,
        cat: 4,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 20,
        name: "Topping",
        image: "images/crep topping.png",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 4,
        // userLiked: true,
        // discount: 3 
    ),


    Product(
        idPdt: 21,
        name: "Shawarma au fromage",
        image: "images/cha fromage.jpg",
        price: 30000,
        menuPrice: null,
        isMenu: null,
        cat: 5,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 22,
        name: "Shawarma Simple",
        image: "images/cha simple.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 5,
        // userLiked: true,
        // discount: 3 
    ),

     Product(
        idPdt: 23,
        name: "Bissap",
        image: "images/bissap.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 6,
        // userLiked: true,
        // discount: 3 
    ),


     Product(
        idPdt: 24,
        name: "Sprite",
        image: "images/sprite.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 6,
        // userLiked: true,
        // discount: 3 
    ),

    Product(
        idPdt: 25,
        name: "Fanta",
        image: "images/fanta.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 6,
        // userLiked: true,
        // discount: 3 
    ),

  Product(
        idPdt: 26,
        name: "Coca Cola",
        image: "images/coca.jpg",
        price: 25000,
        menuPrice: null,
        isMenu: null,
        cat: 6,
        // userLiked: true,
        // discount: 3 
    ),
];


  List<Product> get foods {
    return [..._foods];
  }

  List<Product> foodsByCat(int cat) {
    return _foods.where((fd) => fd.cat == cat).toList();
  }

  Product findById(int id) {
    return _foods.firstWhere( (prod) => prod.idPdt == id);
  }

  void addProduct() {
    // _food.add(value);
    notifyListeners();
  }

}


//Category Provider


 class CategoriesProvider with ChangeNotifier {

  List<Category> _categorie = [

  Category(
    id: 1,
    name: 'Pizza',
    image: 'pizzaCat.png',
    // onPress: null, 
  ),

  Category(
    id: 2,
    name: 'Sandwich froid',
    image: 'sandwichCat.png',
    // onPress: null,
  ),

  Category(
    id: 3,
    name: 'Gaufres',
    image: 'gaufreCat.png',
    // onPress: null,
  ),


  Category(
    id: 4,
    name: 'Crèpes',
    image: 'crepCat.png',
    // onPress: null, 'grillCat.png'
  ),

  Category(
    id: 5,
    name: 'Shawarma',
    image: 'chaCat.png',
    // onPress: null,
  ),

  Category(
    id: 6,
    name: 'Boisson',
    image: 'bissapCat.png',
    // onPress: null,
  ),

 
];


 List<Category> get categorie {
    
  return [..._categorie];
 }

  
  // Future<void> fetchAndSetCategory() async {
  //   const url = '';

  //   try{
  //     final response = await http.get(url);
  //     final extractedData = json.decode(response.body) as Map<dynamic, dynamic>;
  //     print(extractedData.toString());

  //     if (extractedData == null) {
  //       return;
  //     }

  //     final List<Category> loadedCategory = [];
  //     extractedData.forEach((catId, catData) {
  //       loadedCategory.add(Category(

  //         id: catId,
  //         name: catData['name'],
  //         image: catData['image']

  //       ));
  //     });

  //     _categorie = loadedCategory;
  //     notifyListeners();


  //   } catch (error) {
  //     throw (error);
  //   }

  // } 


  Category findById(int id) {
    return _categorie.firstWhere( (categ) => categ.id == id);
  }

  




}

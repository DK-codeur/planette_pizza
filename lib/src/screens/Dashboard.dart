import 'package:flutter/material.dart';
import 'package:planete_pizza/src/providers/cart_provider.dart';
import 'package:planete_pizza/src/screens/store.dart';
import 'package:planete_pizza/src/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../shared/main_drawer.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import './cart_screen.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';

  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  // final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      Center(child: Text('Aucun produits disponible')),
      Store(),
      Center(child: Text('Mon compte')),
    ];

    return Scaffold(
      // key: _keyScaffold,
        backgroundColor: bgColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          // leading: IconButton(
          //   onPressed: () {
          //     _keyScaffold.currentState.openDrawer();
          //   },
          //   iconSize: 27,
          //   icon: Icon(Icons.apps),
          // ),
          backgroundColor: primaryColor,
          title: Text('Planète Pizza', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            Consumer<Cart>(
              builder: (_, cart, ch) => Badge(
                value: cart.itemCount.toString(),
                child: ch,
              ),

              child: IconButton(
                icon: Icon(Icons.shopping_basket, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            ) 
          ],
        ),

        body: _tabs[_selectedIndex],

        drawer: MainDrawer(),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 15.0,
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          
          unselectedItemColor: Colors.grey,
          // fixedColor: Colors.green[600],
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                
                icon: Icon(Icons.card_giftcard),
                title: Text(
                  'Promos',
                  style: tabLinkStyle,
                )),

            BottomNavigationBarItem(
                
                icon: Icon(Icons.home),
                title: Text(
                  'Store',
                  style: tabLinkStyle,
                )
            ),

            BottomNavigationBarItem(
                
                icon: Icon(Icons.account_circle),
                title: Text(
                  'Compte',
                  style: tabLinkStyle,
                )
            ),
            
          ],
          
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// void menuInfo() {
//     SnackBar mysnack = new SnackBar(
//       content: new Text(
//         'Mon premier snackbar'
//       ),
//       backgroundColor: Colors.red,
//       duration: new Duration(seconds: 2),
//     );

//     Scaffold.of(context).showSnackBar(mysnack);
// }
}


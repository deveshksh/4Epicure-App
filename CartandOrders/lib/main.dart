import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';
import './screens/cart_screen.dart';
import './screens/products_overview _screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(context) => Products(),
        ),
        ChangeNotifierProvider(
          create:(context) => Cart(),
        ),
        ChangeNotifierProvider(
          create:(context) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Grocery',
        theme: ThemeData(
              fontFamily: 'Lato',
              colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color(0xFFFFB100),
              secondary: const Color(0xFFFBC252),
      ),
      ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName:(context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrdersScreen.routeName:(context) => OrdersScreen(),
        },
      ),
    );
  }
}



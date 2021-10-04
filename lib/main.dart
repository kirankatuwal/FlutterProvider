import 'package:flutter/material.dart';
import 'package:myapp/providers/counter.dart';
import 'package:myapp/providers/shopping_cart.dart';
import 'package:myapp/screens/homepage.dart';
import 'package:myapp/screens/shopping.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Provider Example'),
        '/shopingpage': (context) => const ShoppingPage(),
      },
    );
  }
}

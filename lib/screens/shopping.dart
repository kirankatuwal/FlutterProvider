import 'package:flutter/material.dart';
import 'package:myapp/providers/counter.dart';
import 'package:provider/provider.dart';
import 'package:myapp/providers/shopping_cart.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example(${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCart>().count}'),
            Text('${context.watch<ShoppingCart>().cart}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          context.read<ShoppingCart>().addItem('Tie'),
        },
        child: const Icon(Icons.add),
        key: const Key('additem'),
        heroTag: "btn1",
        tooltip: 'Add Item',
      ),
    );
  }
}

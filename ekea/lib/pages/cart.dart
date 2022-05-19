import 'package:flutter/material.dart';

import 'package:ekea/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('Cart'),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ], // <Widget>[]
      ),
      body: new Cart_products(),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              const Expanded(
                 child: Padding(
                   padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                     child: ListTile(
                       title: Text("Total: "),
                       subtitle: Text("\$2347"),
                     )
                 ),
              ),
              Expanded(
                child: Padding (
                  padding: EdgeInsets.fromLTRB(0, 0, 50, 30),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Checkout",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                )
              )
            ],
          )),
    );
  }
}

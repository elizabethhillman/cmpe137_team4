import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red,
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

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            const Expanded(child: ListTile(
              title: Text("Total: "),
              subtitle: Text("\$230"),
            )),
            
            Expanded(
                child: MaterialButton(onPressed: (){},
                child: Text("Checkout", style: TextStyle(color: Colors.white),),
                color: Colors.red,
                ),



                )
          ],
        )
      ),
    );
  }
}

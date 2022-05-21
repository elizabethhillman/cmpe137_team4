import 'package:ekea/main.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue,
          title: Text('Checkout'),
          actions: [
            // IconButton(
            //     icon: const Icon(
            //       Icons.search,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));
                })
          ],// <Widget>[]
        ),
        body: Center(
          child: Container(
            // color: Colors.white,

              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children:  <Widget>[
                  Container(
                      child: Padding (
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 30),

                        child: Image.asset(
                          "images/confirmed.png",
                          height: 60.0,
                        ),
                      )

                  ),

                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                      child: ListTile(
                        title: Text("Order Confirmed.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center
                      ),
                        subtitle: Text("\nYour order will arrive to your address \nin 4-6 business days. \n\nThank you for shopping with EKEA.",
                        style: TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center

                        ),
                      ),
                    ),
                  ),

                ],
              )

          ),)
    );
  }
}

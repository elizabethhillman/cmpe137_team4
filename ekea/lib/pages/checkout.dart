import 'package:flutter/material.dart';

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
          title: Text('Checkout'), // <Widget>[]
        ),
        body: Center(
          child: Container(
            // color: Colors.white,

              child: Row(
                children:  <Widget>[
                  Expanded(
                      child: Padding (
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 30),

                        child: Image.asset(
                          "images/sjsuLogo.png",
                        ),
                      )

                  ),

                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                      child: ListTile(
                        title: Text("Name: \nSammy Spartan \n"),
                        subtitle: Text(
                          "Email: \nsammy.spartan@sjsu.edu \n\nCredit Card: \nXXX-XXX-XXX-XX-0126",
                          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),

                ],
              )

          ),)
    );
  }
}

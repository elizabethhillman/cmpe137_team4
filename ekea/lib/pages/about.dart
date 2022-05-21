import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue,
          title: Text('About'), // <Widget>[]
        ),
        body: Center(
          child: Container(
            // color: Colors.white,

              child: Row(
                children: const <Widget>[
                  Expanded(
                      child: Padding (
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                          child: Text(
                            "Ekea is an e-commerce app where users can shop "
                                "from a wide range of products, searching by the"
                                " wanted item's color, materials, type, etc. Users "
                                "are able to view clear and detailed information about "
                                "each product before purchase.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )

                ],
              )),)
    );
  }
}
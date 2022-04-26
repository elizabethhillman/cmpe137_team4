import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_new_price;
  final product_detail_old_price;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('EKEA'),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.black87,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // -------- The First Buttons --------
          Row(
            children: <Widget>[
              //------The Size Button -------
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("Size")),
                          Expanded(child: new Icon(Icons.arrow_drop_down)),
                        ],
                      ))),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("Color")),
                          Expanded(child: new Icon(Icons.arrow_drop_down))
                        ],
                      ))),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("Qty")),
                          Expanded(child: new Icon(Icons.arrow_drop_down))
                        ],
                      )))
            ],
          ),

          // -------- The Second Buttons --------
          Row(
            children: <Widget>[
              //------The Size Button -------
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text("Buy now")
              ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.red)

            ],
          ),
        ]
      )
    );
  }
}

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Armani Blazer",
      "picture": "images/products/blazer1.png",
      "price": 85,
      "size": "M",
      "color": "Gray",
      "quantity": 1
    },
    {
      "name": "Black Oxfords",
      "picture": "images/products/shoesM.png",
      "price": 50,
      "size": "7",
      "color": "Black",
      "quantity": 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
              cart_prod_name: Products_on_the_cart[index]["name"],
              cart_prod_color: Products_on_the_cart[index]["color"],
              cart_prod_qty: Products_on_the_cart[index]["quantity"],
              cart_prod_size: Products_on_the_cart[index]["size"],
              cart_prod_price: Products_on_the_cart[index]["price"],
              cart_prod_picture: Products_on_the_cart[index]["picture"]);
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  var cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_color,
      this.cart_prod_price,
      this.cart_prod_picture,
      this.cart_prod_qty,
      this.cart_prod_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======== LEADING SECTION ========
        leading: Image.asset(cart_prod_picture,
          width: 80.0,
          height: 80.0),
        
        // ======== TITLE SECTION ========
        title: Text(cart_prod_name),

        // ======== SUBTITLE SECTION ========
        subtitle: Column(
          children: <Widget>[

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),
              
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_color, style: TextStyle(color: Colors.red)),
                )

              ],
            ),

//          ======== PRODUCT PRICE SECTION ========
            Container(
              alignment: Alignment.topLeft,
              child: Text ("\$${cart_prod_price}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            )

          ]
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(icon: const Icon(Icons.keyboard_arrow_up), iconSize: 80.0, onPressed: () => {}),
              
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child:
              Text (cart_prod_qty.toString(),
                style: const TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold
                ),
              ),),

              IconButton(icon: const Icon(Icons.keyboard_arrow_down), iconSize: 80.0, onPressed: () => {})
              
            ],
          )
        ),
      ),
    );
  }
}

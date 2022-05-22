import 'package:flutter/material.dart';
import 'package:ekea/main.dart';
import 'package:ekea/pages/cart.dart';

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
enum sizeList {size, small, medium, large}
enum colorList {color, black, red, brown, blue, white}
enum quantityList {qty, one, two, three, four}

class _ProductDetailsState extends State<ProductDetails> {
  sizeList? chosenSize = sizeList.size;
  colorList? chosenColor = colorList.color;
  quantityList? chosenQuantity = quantityList.qty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.blue,
          title: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text('EKEA')),
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
                            style: const TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.lineThrough),
                          )),
                      Expanded(
                          child: Text(
                            "\$${widget.product_detail_new_price}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text("Size"),
                                content: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                    ListTile(
                                    title: const Text('Small'),
                                  leading: Radio<sizeList>(
                                    value: sizeList.small,
                                    groupValue: chosenSize,
                                    onChanged: (sizeList? value) {
                                      setState(() {
                                        chosenSize = value;
                                        Navigator.of(context).pop(context);
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Medium'),
                                  leading: Radio<sizeList>(
                                    value: sizeList.medium,
                                    groupValue: chosenSize,
                                    onChanged: (sizeList? value) {
                                      setState(() {
                                        chosenSize = value;
                                        Navigator.of(context).pop(context);
                                      });
                                    },
                                  ),
                                ),
                                        ListTile(
                                          title: const Text('Large'),
                                          leading: Radio<sizeList>(
                                            value: sizeList.large,
                                            groupValue: chosenSize,
                                            onChanged: (sizeList? value) {
                                              setState(() {
                                                chosenSize = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                          ],

                                    )),
                              );
                            });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text(chosenSize.toString().substring(9),
                          style: TextStyle(
                            fontSize: 11.9,
                          ),)
                          ),
                          Expanded(child: new Icon(Icons.arrow_drop_down)),
                        ],
                      ))),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text("Color"),
                                content: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: const Text('Black'),
                                          leading: Radio<colorList>(
                                            value: colorList.black,
                                            groupValue: chosenColor,
                                            onChanged: (colorList? value) {
                                              setState(() {
                                                chosenColor = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Brown'),
                                          leading: Radio<colorList>(
                                            value: colorList.brown,
                                            groupValue: chosenColor,
                                            onChanged: (colorList? value) {
                                              setState(() {
                                                chosenColor = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('White'),
                                          leading: Radio<colorList>(
                                            value: colorList.white,
                                            groupValue: chosenColor,
                                            onChanged: (colorList? value) {
                                              setState(() {
                                                chosenColor = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Red'),
                                          leading: Radio<colorList>(
                                            value: colorList.red,
                                            groupValue: chosenColor,
                                            onChanged: (colorList? value) {
                                              setState(() {
                                                chosenColor = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Blue'),
                                          leading: Radio<colorList>(
                                            value: colorList.blue,
                                            groupValue: chosenColor,
                                            onChanged: (colorList? value) {
                                              setState(() {
                                                chosenColor = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                      ],

                                    )),
                              );
                            });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text(chosenColor.toString().substring(10))),
                          Expanded(child: new Icon(Icons.arrow_drop_down)),
                        ],
                      ))),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text("Quantity"),
                                content: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: const Text('One'),
                                          leading: Radio<quantityList>(
                                            value: quantityList.one,
                                            groupValue: chosenQuantity,
                                            onChanged: (quantityList? value) {
                                              setState(() {
                                                chosenQuantity = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Two'),
                                          leading: Radio<quantityList>(
                                            value: quantityList.two,
                                            groupValue: chosenQuantity,
                                            onChanged: (quantityList? value) {
                                              setState(() {
                                                chosenQuantity = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Three'),
                                          leading: Radio<quantityList>(
                                            value: quantityList.three,
                                            groupValue: chosenQuantity,
                                            onChanged: (quantityList? value) {
                                              setState(() {
                                                chosenQuantity = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Four'),
                                          leading: Radio<quantityList>(
                                            value: quantityList.four,
                                            groupValue: chosenQuantity,
                                            onChanged: (quantityList? value) {
                                              setState(() {
                                                chosenQuantity = value;
                                                Navigator.of(context).pop(context);
                                              });
                                            },
                                          ),
                                        ),
                                      ],

                                    )),
                              );
                            });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text(chosenQuantity.toString().substring(13))),
                          Expanded(child: new Icon(Icons.arrow_drop_down)),
                        ],
                      ))),
            ],
          ),

          // -------- The Second Buttons --------
          Row(
            children: <Widget>[
              //------The Size Button -------
              const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now!")
                ),
              ),

              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                  },
                  icon: Icon(Icons.add_shopping_cart)),
              // IconButton(
              //     onPressed: () {},
              //     icon: Icon(Icons.favorite_border),
              //     color: Colors.red)
            ],
          ),
          const Divider(color: Colors.grey),
          const ListTile(
            title: Text("Product details"),
          ),
          Row(children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                "Product Name: ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("${widget.product_detail_name}"))
          ]),
          Row(children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                "Product Brand: ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0), child: Text("EKEA"))
          ]),
          Row(children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                "Product Condition: ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("NEW"),
            )
          ]),
          const Divider(),
          const Padding(
              padding: EdgeInsets.all(8.0), child: Text("Similar Products")),

//          SIMILAR PRODUCTS SECTION
          Container(
            height: 340.0,
            child: const Similar_products(),
          )
        ]));
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Leather Arm Chair",
      "picture": "images/products/arm chair.jpg.webp",
      "old_price": 350,
      "price": 275,
    },
    {
      "name": "Dinnerware",
      "picture": "images/products/dinnerware.jpg.webp",
      "old_price": 50,
      "price": 40,
    },
    {
      "name": "Dresser",
      "picture": "images/products/dresser2.jpg.webp",
      "old_price": 370,
      "price": 329,
    },
    {
      "name": "Microwave Oven",
      "picture": "images/products/microwave-oven.jpg.webp",
      "old_price": 75,
      "price": 49,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  //const Single_prod({Key? key}) : super(key: key);

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
      {this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          Text(
                            "\$$prod_price",
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    // child: ListTile(
                    //   leading: Text(
                    //     prod_name,
                    //     style: TextStyle(fontWeight: FontWeight.bold),
                    //   ),
                    //   title: Text("\$$prod_price",
                    //       style: const TextStyle(
                    //           color: Colors.red, fontWeight: FontWeight.w800)),
                    //   subtitle: Text("\$$prod_old_price",
                    //       style: const TextStyle(
                    //           color: Colors.black54,
                    //           fontWeight: FontWeight.w800,
                    //           decoration: TextDecoration.lineThrough)),
                    // ),
                  ),
                  child: Image.asset(prod_picture, fit: BoxFit.cover)),
            ),
          )),
    );
  }
}
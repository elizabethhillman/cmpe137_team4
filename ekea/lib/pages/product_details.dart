import 'package:flutter/material.dart';
import 'package:ekea/main.dart';


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
          backgroundColor: Colors.blue,
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() ));},
              child: Text('EKEA')),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
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
                                      for (int i = 1; i <= 5; i++)
                                        ListTile(
                                          title: Text(
                                            'Radio $i',
                                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: i == 5 ? Colors.black38 : Colors.black),
                                          ),
                                          // leading: Radio(
                                          //   value: i,
                                          //   activeColor: const Color(0xFF6200EE),
                                          //   onChanged: i == 5 ? null : (int value) {
                                          //     setState(() {
                                          //       _value = value;
                                          //     });
                                          //   },
                                          //   groupValue: null,
                                          // ),
                                        ),
                                    ],
                                  )
                                ),
                                actions: <Widget>[
                                  MaterialButton(
                                      onPressed: (){
                                        Navigator.of(context).pop(context);
                                      },
                                      child: const Text("Close",
                                        style: TextStyle(
                                            color: Colors.blue
                                        ),))
                                ],
                              );
                            });
                      },
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text("Color"),
                                content: Text("Choose the color"),
                                actions: <Widget>[
                                  MaterialButton(
                                      onPressed: (){
                                        Navigator.of(context).pop(context);
                                      },
                                      child: const Text("Close",
                                        style: TextStyle(
                                            color: Colors.blue
                                        ),))
                                ],
                              );
                            });
                      },
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text("Quantity"),
                                content: Text("Choose the quantity"),

                                actions: <Widget>[
                                  MaterialButton(
                                      onPressed: (){
                                        Navigator.of(context).pop(context);
                                      },
                                      child: const Text("Close",
                                        style: TextStyle(
                                            color: Colors.blue
                                        ),))
                                ],
                              );
                            });
                      },
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
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy now")
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.red)

            ],
          ),
          const Divider(color: Colors.grey),
          const ListTile(
            title: Text("Product details"),
          ),
          Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product Name: ", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                  child: Text("${widget.product_detail_name}"))
              ]
          ),
          Row(
              children: const <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product Brand: ", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                    child: Text("Brand X"))
              ]
          ),
          Row(
              children: const <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product Condition: ", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                  child: Text("NEW"),)
              ]
          ),
        const Divider(),
        const Padding(padding: EdgeInsets.all(8.0),
            child: Text("Similar Products")
        ),

//          SIMILAR PRODUCTS SECTION
        Container(
          height: 340.0,
            child: const Similar_products(),
        )
        ]
        )
    );
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
      "name": "Black Oxfords",
      "picture": "images/products/shoesM.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black Stilettos",
      "picture": "images/products/shoesF.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Silver Ring",
      "picture": "images/products/ring.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "AP Watch",
      "picture": "images/products/watch.png",
      "old_price": 100,
      "price": 50,
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
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        Text("\$$prod_price", style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
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


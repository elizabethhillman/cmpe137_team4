import 'package:flutter/material.dart';
import 'package:ekea/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Armani Blazer",
      "picture": "images/products/blazer1.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress1.png",
      "old_price": 100,
      "price": 50,
    },
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
      "name": "Gold Chain",
      "picture": "images/products/chain.png",
      "old_price": 100,
      "price": 50,
    },
    {
    "name": "Black Bracelet",
    "picture": "images/products/bracelet.png",
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
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  //const Single_prod({Key? key}) : super(key: key);

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
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

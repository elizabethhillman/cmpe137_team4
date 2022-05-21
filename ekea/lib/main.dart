import 'package:ekea/pages/account.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ekea/components/horizontal_listview.dart';
import 'package:ekea/components/products.dart';
import 'package:ekea/pages/cart.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
          ),
          items: [
            Image.asset(
              'carousel_images/carousel1.jpeg.webp',
              fit: BoxFit.cover,
              width: 500.0,
            ),
            Image.asset(
              'carousel_images/carousel2.jpg.webp',
              fit: BoxFit.cover,
              width: 500.0,
            ),
            Image.asset(
              'carousel_images/carousel3.jpg',
              fit: BoxFit.cover,
              width: 500.0,
            ),
            Image.asset(
              'carousel_images/carousel4.jpg',
              fit: BoxFit.cover,
              width: 500.0,
            ),
            Image.asset(
              'carousel_images/carousel5.jpg.webp',
              fit: BoxFit.cover,
              width: 500.0,
            ),
          ]),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('EKEA'),
        actions: [
          // IconButton(
          //     icon: const Icon(
          //       Icons.search,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //header of drawer
            UserAccountsDrawerHeader(
              accountName: const Text('Sammy Spartan'),
              accountEmail: const Text(
                'sammy.spartan@sjsu.edu',
              ),
              currentAccountPicture:
                  GestureDetector(child: Image.asset('images/sjsuLogo.jpg')
                      // new CircleAvatar(backgroundColor: Colors.grey),
                      ),
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: const ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home, color: Colors.blue))),

            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Account()));
                },
                child: const ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.blue))),

            // InkWell(
            //     onTap: () {},
            //     child: const ListTile(
            //         title: Text('My Orders'),
            //         leading: Icon(Icons.shopping_basket, color: Colors.blue))),

            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                child: const ListTile(
                    title: Text('Shopping Cart'),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.blue,
                    ))),

            // InkWell(
            //     onTap: () {},
            //     child: const ListTile(
            //         title: Text('Favorites'),
            //         leading: Icon(Icons.favorite, color: Colors.red))),

            Divider(),

            InkWell(
                onTap: () {},
                child: const ListTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Icons.settings,
                    ))),

            InkWell(
                onTap: () {},
                child: const ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                    ))),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          const HorizontalList(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

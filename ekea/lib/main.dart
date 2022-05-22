import 'package:ekea/pages/account.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ekea/components/horizontal_listview.dart';
import 'package:ekea/components/products.dart';
import 'package:ekea/pages/cart.dart';
import 'package:ekea/pages/about.dart';

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
    Widget imageCarousel = SizedBox(
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
        title: const Text('EKEA'),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Cart()));
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
                      context, MaterialPageRoute(builder: (context) => const Account()));
                },
                child: const ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.blue))),

            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Cart()));
                },
                child: const ListTile(
                    title: Text('Shopping Cart'),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.blue,
                    ))),

            const Divider(),

            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const About()));
                },
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
          imageCarousel,
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          const HorizontalList(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent products'),
          ),
          const SizedBox(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

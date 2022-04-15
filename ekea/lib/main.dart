import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
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
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('EKEA'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            //header of drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Sammy Spartan'),
              accountEmail: Text(
                'sammy.spartan@sjsu.edu',
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(backgroundColor: Colors.grey),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Home Page'), leading: Icon(Icons.home))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('My Account'), leading: Icon(Icons.person))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Categories'), leading: Icon(Icons.dashboard))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Favorites'), leading: Icon(Icons.favorite))),

            Divider(),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                    ))),

            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                      color: Colors.green,
                    ))),
          ],
        ),
      ),
    );
  }
}

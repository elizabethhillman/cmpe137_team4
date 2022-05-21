import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('Account'), // <Widget>[]
      ),
      body: Center(
      child: Container(
          // color: Colors.white,

          child: Column(
            children:  <Widget>[
              Container(
                  child: Padding (
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 30),

                    child: Image.asset(
                     "images/sjsuLogo.png",
                    ),
                  )

              ),

              const Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: ListTile(
                      title: Text("Name: \nSammy Spartan \n"),
                      subtitle: Text(
                          "Email: \nsammy.spartan@sjsu.edu \n\nCredit Card: \nXXX-XXX-XXX-XX-0126 \n\nAddress: \n1 Washington Sq, San Jose, CA 95192",
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

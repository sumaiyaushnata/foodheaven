import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});
  static String idScreen = "order";

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Widget orderbody() {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   color: Colors.white,
      //   border: Border.all(width: 1),
      // ),
      // height: 140,
      // width: double.infinity,
      child: ListTileTheme(
        iconColor: Colors.red,
        textColor: Colors.black54,
        tileColor: Colors.yellow[100],
        style: ListTileStyle.list,
        dense: true,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => Card(
            margin: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/pizza.png"))),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 110,
                    child: ListTile(
                      title: Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pizza",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "price",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.all(10),
                        child: IconButton(
                          icon: Icon(Icons.delete_forever),
                          iconSize: 40,
                          color: Colors.redAccent,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_score), label: "MY Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Order",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: orderbody(),
    ));
  }
}

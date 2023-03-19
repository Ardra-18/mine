//import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter_plant_shop_ui/detail.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mine/pages/gitfold/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> _product = [
    Product(
      image: 'assets/images/Mango.png',
      title: 'Succulent',
      price: 29.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'assets/images/Banana.png',
      title: 'Dragon ',
      price: 25.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'assets/images/Mango.png',
      title: 'Raevnea ',
      price: 22.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'assets/images/tomato.png',
      title: 'Potted ',
      price: 24.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'assets/images/crop1.png',
      title: 'Ipsum ',
      price: 30.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'assets/images/crop1.png',
      title: 'Lorem ',
      price: 19.99,
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 139, 47),
        title: const Text(
          "Be Green",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 5,
        //the icon ends here
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        //color: Colors.blue,
        //margin: const EdgeInsets.only(top: 18, left: 14, right: 14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  ' Welcome to Plant Shop',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              //Icon(Icons.shopping_cart_rounded,size: 30,)
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
          //  const SizedBox(height: 24,),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      //maxCrossAxisExtent: 200,
                      mainAxisExtent: 220,
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: _product.length,
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              product: _product[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.blue),
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0)),
                            child: Image.asset(
                              _product[index].image,
                              height: 170,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(_product[index].title,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                      ),
                    );
                  })),
          /*child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  // itemCount: _product.length,
                  //itemBuilder: (BuildContext context, int index) {
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              product: _product[index],
                            ),
                          ),
                        );
                      },
                      child: _productItem(
                        title: _product[index].title,
                        image: _product[index].image,
                        price: _product[index].price.toString(),
                        isFavorited: Random().nextBool(),
                      ),
                    ),
                  ]
                  //staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                  //mainAxisSpacing: 24,
                  //crossAxisSpacing: 24,
                  ),*/
        ]),
      ),
    );
  }

  /* Widget _productItem(
      {required String title, image, price, required bool isFavorited}) {
    return Container(
      //height: double.infinity,
      /* decoration: BoxDecoration(
          border: Border.all(
              width: 3, color: const Color.fromARGB(255, 200, 221, 171)),
          //color: Color.fromARGB(255, 200, 221, 171),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/$image'), fit: BoxFit.cover)),*/
      padding: const EdgeInsets.all(4),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/$image',
                        width: 150,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          // ignore: unnecessary_string_interpolations
                          '$title',
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    /*return Container(
      //width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(14),
      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green,),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    /*   Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(100, 25)),
                          ),
                        ),
                      ),
                    ),*/
                    Row(
                      children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/$image',
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    // ignore: unnecessary_string_interpolations
                    '$title',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                //Text( '\$$price',style: const TextStyle(fontWeight: FontWeight.bold),),
                /*Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: isFavorited
                        ? Colors.pink.shade100
                        : Colors.grey.shade400,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: isFavorited ? Colors.red : Colors.black,
                    size: 15,
                  ),
                  /* padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade400,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                  */
                ), */
              ],
            ),
          ],
        ),
      ),
    );
    */
  }
  */
}

class Product {
  String title;
  double price;
  String image;
  String desc;

  Product(
      {required this.title,
      required this.price,
      required this.image,
      required this.desc});
}

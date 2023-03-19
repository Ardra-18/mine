import 'package:flutter/material.dart';
import 'package:mine/pages/data/cropdata.dart';
import 'package:mine/pages/selectcrop.dart';

class CropDetail extends StatelessWidget {
  final Product product;
  final FruitDataModel fruitDataModel;
  const CropDetail(
      {Key? key, required this.fruitDataModel, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
        // appBar: AppBar(title: Text(fruitDataModel.name),),
        body: Column(children: [
        Image.asset(fruitDataModel.imageUrl),
        Text(fruitDataModel.desc)
      ]),
        );*/
    Size size = MediaQuery.of(context).size;
    /*  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 147, 56),
        title: Text(fruitDataModel.name),
      ),
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: Column(),
            ),
            Container(
              height: size.height * 0.55,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      //topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Color.fromARGB(127, 0, 0, 0),
                        blurRadius: 20),
                  ],
                  image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      image: AssetImage(fruitDataModel.imageUrl))),
            )
          ]),
        ],
      ),
    ); 
    */
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
            const Icon(Icons.shopping_cart, size: 25)
          ]),
        ),
        _productImage(),
        const SizedBox(
          height: 16,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(left: 18, top: 28),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.grey.shade200,
          ),
        ))
      ],
    )));
  }
}

Widget _productImage() {
  // ignore: prefer_typing_uninitialized_variables
  var product;
  return Stack(
    children: [
      Positioned.fill(
          child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.elliptical(300, 50)),
          ),
        ),
      )),
      Center(
        child: Image.asset(
          product.image,
          //'assets/images/${product.image}',
          height: 350,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}

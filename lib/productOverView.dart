import 'package:flutter/material.dart';

enum SinginCharacter { fill, outline }

class product extends StatefulWidget {


  const product({
    super.key,
  });

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget bottomNavigationBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
        child: Container(
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
              iconColor: Colors.grey,
              backgroundColor: Colors.black,
              color: Colors.white,
              title: 'Add to Wish List',
              iconData: Icons.favorite_outline),
          bottomNavigationBar(
              iconColor: Colors.white,
              backgroundColor: Colors.orangeAccent,
              color: Colors.white,
              title: 'Go to Cart',
              iconData: Icons.shop),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        iconTheme: IconThemeData(),
        title: Text(
          'Product Overview',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Fresh Basil',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('\$50'),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            padding: EdgeInsets.all(40),
            child: Image.asset('assets/basil1.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
              'available option',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                    Radio(
                      value: SinginCharacter.fill,
                      groupValue: _character,
                      onChanged: (value) {
                        setState(() {
                          _character = value!;
                        });
                      },
                      activeColor: Colors.green,
                    )
                  ],
                ),
                Text('\$50'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.orange,
                      ),
                      Text(
                        'Add',
                        style: TextStyle(color: Colors.orange),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'About this Product',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer. ')
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

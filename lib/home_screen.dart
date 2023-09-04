import 'package:flutter/material.dart';
import 'package:selfproject/productOverView.dart';
import 'package:selfproject/search.dart';
import 'package:selfproject/signin_dart.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Widget listTile({
    required IconData icon,
    required String title,
    required Function() onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(
        child: Container(
          color: Colors.orangeAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/vegi.jpg'),
                        radius: 37,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome Guest',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              listTile(icon: Icons.home, title: 'home', onTap: () {}),
              listTile(icon: Icons.shop, title: 'Review cart', onTap: () {}),
              listTile(
                  icon: Icons.account_circle_rounded,
                  title: 'My profile',
                  onTap: () {}),
              listTile(
                  icon: Icons.notification_add_outlined,
                  title: 'Notification',
                  onTap: () {}),
              listTile(
                  icon: Icons.star, title: 'Rating & Review', onTap: () {}),
              listTile(
                  icon: Icons.favorite_outlined,
                  title: 'Wishlist',
                  onTap: () {}),
              listTile(
                  icon: Icons.copy, title: 'Raise & complaint', onTap: () {}),
              listTile(
                  icon: Icons.format_clear_outlined,
                  title: 'FaQs',
                  onTap: () {}),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => search()));
            },
            icon: Icon(Icons.search),
            iconSize: 17,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shop),
            iconSize: 17,
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(''
                            'assets/image1.png'),
                        fit: BoxFit.cover)),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50))),
                            child: Center(
                                child: Text(
                              'Vegi',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '30% off',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'On all vegitables product ',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs seasonings'),
                  TextButton(onPressed: () {}, child: Text('View all'))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => product()));
                      },
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/basil1.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Fresh basil',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/basil4.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Fresh Mint',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/basil3.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Fresh basil',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/basil5.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Fresh basil',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh fruits'),
                  TextButton(onPressed: () {}, child: Text('View all'))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/grapes.png'))),
                              Column(
                                children: [
                                  Text(
                                    'grapes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image: AssetImage('assets/orang.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Orange',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image:
                                          AssetImage('assets/watermelon.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Watermelon',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image(
                                      image:
                                          AssetImage('assets/strovery.png'))),
                              Column(
                                children: [
                                  Text(
                                    'Strovery',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '50\$/50 gram',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '50Gm',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 27,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Colors.white70,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.add),
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Icon(Icons.remove)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

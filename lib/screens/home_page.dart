

import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> menuList = [
    {
      'name': 'Tower Burger',
      'price': "\$ 245.00",
      'image': "images/B1.png",
      'subtitle': 'Juicy Burger'
    },
    {
      'name': 'Chicken Burger',
      'price': "\$ 75.00",
      'image': "images/B2.png",
      'subtitle': 'Double Patty'
    },
    {
      'name': 'Hamburger Patty',
      'price': "\$ 120.00",
      'image': "images/b3.png",
      'subtitle': 'Double Patty'
    },
  ];

  int tabs = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        currentIndex: 0,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined, size: 20),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: 20),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, size: 20),
            label: 'Settings',
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          "images/profile.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Cameron",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2, left: 3),
                                child: Text(
                                  "New Mexico 31134",
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.pink.withOpacity(0.2)),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.pink[400],
                      ),
                      hintText: "Search",
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.pink[200]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Image.asset(
                    "images/Banner.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tabs = 0;
                          });
                        },
                        child: Container(
                          width: 101,
                          height: 34,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    "images/icon1.png",
                                  ),
                                ),
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                      color:
                                          tabs == 0 ? Colors.white : Colors.red,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: tabs == 0
                                  ? Colors.pink
                                  : Colors.pink.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tabs = 1;
                          });
                        },
                        child: Container(
                          width: 101,
                          height: 34,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "images/icon2.png",
                                  ),
                                ),
                                Text(
                                  "Pizza",
                                  style: TextStyle(
                                      color:
                                          tabs == 1 ? Colors.white : Colors.red,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: tabs == 1
                                  ? Colors.pink
                                  : Colors.pink.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tabs = 2;
                          });
                        },
                        child: Container(
                          width: 101,
                          height: 34,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "images/icon3.png",
                                  ),
                                ),
                                Text(
                                  "Drinks",
                                  style: TextStyle(
                                      color:
                                          tabs == 2 ? Colors.white : Colors.red,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: tabs == 2
                                  ? Colors.pink
                                  : Colors.pink.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 152,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: menuList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailPage(
                                product: "",
                              ),
                            ));
                      },
                      child: Card(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadowColor: Colors.black,
                        elevation: 3,
                        child: Column(
                          children: [
                            Hero(
                              tag: Image.asset(
                                menuList[index]['image'],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 95,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            menuList[index]['image']),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]['name'],
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]['subtitle'],
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]["price"],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  children: [
                    Text(
                      "Popular Now",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 152,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: menuList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailPage(
                                product: "",
                              ),
                            ));
                      },
                      child: Card(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadowColor: Colors.black,
                        elevation: 3,
                        child: Column(
                          children: [
                            Hero(
                              tag: Image.asset(
                                menuList[index]['image'],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 95,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            menuList[index]['image']),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]['name'],
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]['subtitle'],
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                menuList[index]["price"],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

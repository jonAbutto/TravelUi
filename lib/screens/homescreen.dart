import 'package:flutter/material.dart';
import 'package:fluttertravels/style.dart';
import 'package:fluttertravels/widgets/destinations_container.dart';
import 'package:fluttertravels/widgets/hotels_container.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  int _selectedIcon = 0;
  List<IconData> myicons = [
    Icons.airplanemode_active,
    Icons.hotel,
    Icons.train,
    Icons.shopping_cart
  ];

  //build icon container - method
  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIcon = index;
        });
        print(_selectedIcon);
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: _selectedIcon == index
              ? Theme.of(context).accentColor
              : Colors.blueGrey,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          myicons[index],
          size: 25.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Travel App',
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 60.0),
              child: Text(
                'What would you like to find?',
                style: text1Style,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: myicons
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildIcons(map.key))
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              /*a clever way of leaving space between widgets*/
              height: 20.0,
            ),
            DestinationContainer(),
            SizedBox(
              height: 10.0,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
            print(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.white,
              child: Text(
                'E J',
                style: GoogleFonts.allura(),
              ),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravels/models/destination.dart';
import 'package:fluttertravels/models/hotel.dart';

import '../style.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Hotels',
                textAlign: TextAlign.left,
                style: topDestinationsTextStyle,
              ),
              GestureDetector(
                onTap: () => print('See all'),
                child: Text(
                  'See All',
                  textAlign: TextAlign.right,
                  style: seeAllTextStyle,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 250.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 160.0,
                          width: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  hotel.name,
                                  style: TextStyle(
                                      letterSpacing: 1.2,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  hotel.address,
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                Text(
                                  '\$${hotel.price} /night',
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            height: 170.0,
                            width: 200.0,
                            image: AssetImage(hotel.imgUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelui/models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Destinations',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () => print('wheres the bitches'),
                child: Text('See All',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        letterSpacing: 1.0)),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          color: Colors.red,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return Container(
                  margin: EdgeInsets.all(20.0),
                  width: 210.0,
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      Container(
                        height: 120.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  '${destination.activities.length} activities',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  )),
                              Text(destination.description,
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0)
                            ]),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage(destination.imageUrl),
                              height: 180.0,
                              width: 180.0,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

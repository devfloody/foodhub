import 'package:flutter/material.dart';
import '../config/theme.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key, required this.imageUrl, required this.name}) : super(key: key);

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 250,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colour.gray.withOpacity(0.2),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: Text(
              name,
              style: Theme.of(context).textTheme.headline4!.copyWith(color: colour.dark),
            ),
            bottom: 40,
            left: 12,
          ),
          Positioned(
            child: Text(
              "Free Delivery",
              style: Theme.of(context).textTheme.headline6!.copyWith(color: colour.gray),
            ),
            bottom: 20,
            left: 12,
          ),
        ],
      ),
    );
  }
}

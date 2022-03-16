import 'package:flutter/material.dart';

import '../../config/theme.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 96,
            width: 60,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: colour.orange,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu 1.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 8),
                Text(
                  'Burger',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: 96,
            width: 60,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: colour.gray.withOpacity(0.2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu 2.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 8),
                Text(
                  'Donat',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colour.dark,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: 96,
            width: 60,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: colour.gray.withOpacity(0.2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu 3.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 8),
                Text(
                  'Pizza',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colour.dark,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: 96,
            width: 60,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: colour.gray.withOpacity(0.2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu 4.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 8),
                Text(
                  'Mexican',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colour.dark,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: 96,
            width: 60,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: colour.gray.withOpacity(0.2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu 5.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 8),
                Text(
                  'Asian',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colour.dark,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

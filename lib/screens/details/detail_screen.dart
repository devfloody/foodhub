import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../config/theme.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int value = 0;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      if (value > 0) {
        value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/restaurant 1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                    ),
                    Positioned(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 38,
                          width: 38,
                          color: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Iconsax.arrow_left_2)),
                        ),
                      ),
                      top: 12,
                      left: 12,
                    ),
                    Positioned(
                      child: ClipOval(
                        child: Container(
                          height: 38,
                          width: 38,
                          color: colour.orange,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Iconsax.heart,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      top: 12,
                      right: 12,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Ground Beef Tacos',
                style: Theme.of(context).textTheme.headline3!.copyWith(color: colour.dark),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: colour.yellow,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '4.5',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: colour.dark),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$9.50',
                    style: GoogleFonts.rubik(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: colour.dark,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () => decrement(),
                          icon: Icon(Iconsax.minus),
                          color: Colors.white,
                        ),
                        backgroundColor: colour.orange,
                      ),
                      SizedBox(width: 8),
                      Text(
                        value.toString(),
                        style: Theme.of(context).textTheme.headline5!.copyWith(color: colour.dark),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () => increment(),
                          icon: Icon(Iconsax.add),
                          color: Colors.white,
                        ),
                        backgroundColor: colour.orange,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.',
                style: Theme.of(context).textTheme.headline6!.copyWith(color: colour.gray),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Add to cart',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
              ),
        ),
        icon: Icon(Iconsax.bag_2),
        backgroundColor: colour.orange,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

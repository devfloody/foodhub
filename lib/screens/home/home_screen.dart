import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/widgets/card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../config/theme.dart';
import '../../widgets/menu_list.dart';
import '../details/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Hub',
          style: Theme.of(context).textTheme.headline5!.copyWith(color: colour.dark),
        ),
        centerTitle: true,
        leading: Icon(
          Coolicons.menu_alt_03,
          color: colour.dark,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/profile.png',
                width: 38,
                height: 38,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What would you like\nto order',
              style: GoogleFonts.rubik(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: colour.dark,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: colour.gray.withOpacity(0.2),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      hintText: 'Find food or restaurant ..',
                      hintStyle:
                          Theme.of(context).textTheme.headline5!.copyWith(color: colour.gray),
                      prefixIcon: Icon(
                        Iconsax.search_normal,
                        color: colour.gray,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.setting_4, color: colour.gray),
                ),
              ],
            ),
            SizedBox(height: 30),
            MenuList(),
            SizedBox(height: 30),
            Text(
              'Featured Restaurant',
              style: Theme.of(context).textTheme.headline4!.copyWith(color: colour.dark),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen())),
                    child: RestaurantCard(
                      imageUrl: 'assets/images/restaurant 1.png',
                      name: "McDonald's",
                    ),
                  ),
                  RestaurantCard(imageUrl: 'assets/images/restaurant 2.png', name: "Starbucks"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: colour.orange,
        child: Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.home_1,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.location,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.bag_2,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.heart,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.notification,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

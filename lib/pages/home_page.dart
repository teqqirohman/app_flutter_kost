import 'package:app_kos_flutter/models/city.dart';
import 'package:app_kos_flutter/models/space.dart';
import 'package:app_kos_flutter/models/tips.dart';
import 'package:app_kos_flutter/providers/space_provider.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:app_kos_flutter/widgets/bottom_navbar_item.dart';
import 'package:app_kos_flutter/widgets/city_card.dart';
import 'package:app_kos_flutter/widgets/space_card.dart';
import 'package:app_kos_flutter/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    spaceProvider.getRecommdedSpaces();

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // todo : TITLE / HEADER-----------------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari Kosan Teki',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //todo : POPULAR CITY ---------------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      name: 'Jakarta',
                      imgUrl: 'assets/image 19.png',
                      isPopuler: false,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 2,
                      name: 'Bandung',
                      imgUrl: 'assets/image 18.png',
                      isPopuler: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 3,
                      name: 'Jambi',
                      imgUrl: 'assets/image 17.png',
                      isPopuler: false,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 4,
                      name: 'Bandung',
                      imgUrl: 'assets/image 15.png',
                      isPopuler: false,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //todo : RECOMDED SPACE-------------------------------------
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Kosan Keren',
                      imgUrl: 'assets/image 15.png',
                      price: 30,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 2,
                      name: 'Kosan Mevahh',
                      imgUrl: 'assets/image 18.png',
                      price: 70,
                      city: 'manado',
                      country: 'Indonesia',
                      rating: 3,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 3,
                      name: 'Oyo jambi',
                      imgUrl: 'assets/image 17.png',
                      price: 52,
                      city: 'Jambi',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //todo : TIPS AND GUINDANCE-------------------------------------
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      imgUrl: 'assets/tips1.png',
                      title: 'City Guidelines',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      imgUrl: 'assets/tips2.png',
                      title: 'Jakarta Fairship',
                      updatedAt: '11 des',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_pesan.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

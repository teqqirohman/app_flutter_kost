import 'package:app_kos_flutter/models/space.dart';
import 'package:app_kos_flutter/pages/detail_page.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({Key? key, required this.space}) : super(key: key);

  final Space space;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    space.imgUrl,
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: pupleColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${space.rating}/5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(
                width: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                      text: ' / Month',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '${space.city} ${space.country}',
                style: greyTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}

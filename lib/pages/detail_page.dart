import 'package:app_kos_flutter/pages/error_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:app_kos_flutter/widgets/facility_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/picture_detail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  const SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kuretakeso hott',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                          text: ' / Month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                    color: greyColor,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: edge,
                          ),
                          child: Text(
                            'Main Facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        // todo: FACILITY
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                imgUrl: 'assets/kitchen.png',
                                name: 'Kitchen',
                                total: 2,
                              ),
                              FacilityItem(
                                imgUrl: 'assets/bedroom.png',
                                name: 'Bedroom',
                                total: 3,
                              ),
                              FacilityItem(
                                imgUrl: 'assets/lemari.png',
                                name: 'Big Lemari',
                                total: 4,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: edge,
                          ),
                          child: Text(
                            'Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: edge,
                              ),
                              Image.asset(
                                'assets/foto_1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/foto_1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/foto_1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: edge,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // todo: LOCATION
                        Padding(
                          padding: EdgeInsets.only(
                            left: edge,
                          ),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jln. Kappan Sukses No. 20\nPalembang',
                                style: greyTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  launchUrl(
                                    'wddadawdwa',
                                  );
                                },
                                child: Image.asset(
                                  'assets/location.png',
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // todo: BUTTON BOOK NOW
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          child: RaisedButton(
                            onPressed: () {
                              launchUrl('tel: 082297480294');
                            },
                            color: pupleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                17,
                              ),
                            ),
                            child: Text(
                              'Book Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

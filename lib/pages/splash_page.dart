import 'package:app_kos_flutter/pages/home_page.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          // bottom: false, Cuma Untuk IOS
          child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/bottom.png')),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'FInd Cozy House\nto Stay and Happy',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 210,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    color: pupleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      'Explore Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

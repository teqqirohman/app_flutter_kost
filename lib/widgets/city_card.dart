import 'package:app_kos_flutter/models/city.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key, required this.city}) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imgUrl,
                  height: 102,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                city.isPopuler
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: pupleColor,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/Icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}


// class CityCard extends StatelessWidget {
//   final City? city;

//   CityCard({
//     required this.city,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(18),
//       child: Container(
//         height: 150,
//         width: 120,
//         color: Color(0xffF6F7F8),
//         child: Column(
//           children: [
//             Image.asset(
//               city.id,
//               height: 102,
//               width: 120,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(
//               height: 11,
//             ),
//             Text(
//               name.id,
//               style: blackTextStyle.copyWith(
//                 fontSize: 16,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../theme.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem(
      {Key? key, required this.name, required this.imgUrl, required this.total})
      : super(key: key);

  final String name;
  final String imgUrl;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgUrl,
          width: 32,
        ),
        const SizedBox(
          height: 2,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(fontSize: 16),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

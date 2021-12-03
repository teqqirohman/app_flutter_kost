import 'package:app_kos_flutter/models/tips.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({Key? key, required this.tips}) : super(key: key);

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imgUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle,
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}

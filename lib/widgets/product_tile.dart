import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/product/nike-1.png',
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'NIKE PEGASUS',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$8,67',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

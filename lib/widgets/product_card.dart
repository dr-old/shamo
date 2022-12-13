import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultMargin,
          ),
          Image.asset(
            'assets/product/nike-1.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'NIKE PEGASUS',
                  style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$8,67',
                  style: priceTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

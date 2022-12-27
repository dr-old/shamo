import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            defaultMargin,
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/icons8-male-user-96.png',
                  width: 74,
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
                      'Hello, Alex',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '@alexis',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/icons8-logout-64.png',
                width: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String text) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: secondaryTextColor,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Edit Profile'),
            menuItem('Your Orders'),
            menuItem('Help'),
            SizedBox(
              height: defaultMargin,
            ),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}

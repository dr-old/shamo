import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Type message...', hintStyle: subtitleTextStyle),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor3,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: backgroundColor1,
            centerTitle: false,
            elevation: 0,
            title: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: yellowColor,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/logo_vertical.jpeg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 45,
          color: secondaryColor,
          margin: EdgeInsets.all(20),
          child: Row(
            children: [],
          ),
        ));
  }
}

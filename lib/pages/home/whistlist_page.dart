import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class WhishlistPage extends StatelessWidget {
  const WhishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Whishlist Page',
        style: primaryTextStyle,
      ),
    );
  }
}

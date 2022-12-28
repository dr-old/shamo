import 'package:flutter/material.dart';
import 'package:shamo/pages/chat_detail_page.dart';
import 'package:shamo/pages/edit_profile_page.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/product_page.dart';
import 'package:shamo/pages/signin_page.dart';
import 'package:shamo/pages/signup_page.dart';
import 'package:shamo/pages/splash_page.dart';
import 'package:shamo/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/chat-detail': (context) => ChatDetailPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
}

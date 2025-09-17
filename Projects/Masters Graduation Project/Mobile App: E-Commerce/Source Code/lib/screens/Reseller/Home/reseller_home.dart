import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_stories/components/navigator.dart';
import 'package:user_stories/screens/Reseller/components/available_categories.dart';
import 'package:user_stories/screens/Reseller/components/icon_btn_with_counter.dart';
import 'package:user_stories/screens/Reseller/components/available_products.dart';
import '../../cart/cart_screen.dart';

class ResellerBody extends StatefulWidget {
  @override
  _ResellerBodyState createState() => _ResellerBodyState();
}

class _ResellerBodyState extends State<ResellerBody> {
  User user = FirebaseAuth.instance.currentUser;
  String role;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('Users')
        .doc(user.email)
        .get()
        .then((value) {
      role = value['Role'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 5),
            child: IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              press: () => navigatorPush(context, CartScreen(role: role)),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 20),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          AvailableCategories(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Available Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: AvailableProducts()),
        ],
      )),
    );
  }
}

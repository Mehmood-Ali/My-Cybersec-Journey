import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_stories/components/navigator.dart';
import 'package:user_stories/screens/Reseller/components/icon_btn_with_counter.dart';
import '../../../../components/product_card.dart';
import '../../../../models/Product.dart';
import '../../../cart/cart_screen.dart';

class CatProducts extends StatefulWidget {
  final String category;
  CatProducts({@required this.category});

  @override
  _CatProductsState createState() => _CatProductsState();
}

class _CatProductsState extends State<CatProducts> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.category),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 5),
            child: IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () => navigatorPush(context, CartScreen(role: role))),
          ),
        ],
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Products')
              .where('category', isEqualTo: widget.category)
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                child: CircularProgressIndicator(),
              );
            if (snapshot.data.docs.length == 0)
              return Center(child: Text('No Products Available'));
            return GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                children: List<Widget>.generate(snapshot.data.docs.length,
                    (index) => productList(snapshot.data.docs[index])));
          },
        ),
      ),
    );
  }

  Widget productList(DocumentSnapshot snapshot) {
    return ProductCard(
      product: Product(
          title: snapshot['title'],
          description: snapshot['description'],
          price: snapshot['price'],
          image: snapshot['image'],
          category: snapshot['category'],
          stock: snapshot['stock'],
          docID: snapshot.id),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_world/models/catalog.dart';
import 'package:marvel_world/widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    await FirebaseFirestore.instance
        .collection('Hero')
        .get()
        .then((QuerySnapshot querySnapshot) {
      CatalogModel.items.clear();
      for (var doc in querySnapshot.docs) {
        Item item =
            Item(name: doc["name"], image: doc["image"], color: doc["color"]);
        CatalogModel.items.add(item);
      }
    });
    if (mounted) {
      setState(
        () {
          /* ... */
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Super Hero's"
                  .text
                  .xl5
                  .color(context.theme.accentColor)
                  .bold
                  .make(),
              16.0.heightBox,
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                const CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
    );
  }
}

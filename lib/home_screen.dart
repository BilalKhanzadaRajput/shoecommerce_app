import 'package:flutter/material.dart';
import 'package:shoecommerce_app/my_colors.dart';

import 'data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      e.id == 1 ? Colors.white : MyColors.myBlack),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      e.id == 1 ? MyColors.myOrange : Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  )),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          color: MyColors.myBlack,
                          child: Image.asset(e.image),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        e.title,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/ic_menu.png"),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Image.asset("assets/ic_search.png")],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset("assets/img_banner.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: "New Release",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: "Nike Air\nMax 90",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              MyColors.myBlack),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )),
                        ),
                        child: Text(
                          "Buy Now".toUpperCase(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 65,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                text: "New Men's",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(5),
            children: Data.generateProducts()
                .map(
                  (e) => Card(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)),
                    elevation: 0,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: 10, right: 10, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(e.image, height: 90, width: 90),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: e.type,
                                style: const TextStyle(
                                  color: MyColors.myOrange,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: e.title,
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: "\$ ${e.price}",
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

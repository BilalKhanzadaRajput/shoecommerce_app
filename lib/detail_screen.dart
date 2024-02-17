import 'package:flutter/material.dart';
import 'package:shoecommerce_app/my_colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<ImageProvider> imageList = [];
  bool autoRotate = false;
  int rotationCount = 22; //22 images
  int swipeSensitivity = 2; // 1 - 5;
  bool allowSwipeToRotate = true;

  @override
  void initState() {
    super.initState();
  }

  void updateImageList(BuildContext context) {
    for (int i = 1; i <= 22; i++) {
      imageList.add(AssetImage("assets/s$i.png"));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Men's Shoes",
          style: TextStyle(color: MyColors.myOrange),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image.asset("assets/ic_search.png"),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: Image.asset("assets/ring.png"),
                      ),
                    )
                  ],
                ),
              ),
              //lets build the rotation image
            ],
          ),
        ),
      ),
    );
  }
}

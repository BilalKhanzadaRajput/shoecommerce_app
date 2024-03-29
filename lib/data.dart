import 'package:shoecommerce_app/product_model.dart';

class Data {
  static List<ProductModel> generateProducts() {
    return [
      ProductModel(
        1,
        "assets/shoes_1.png",
        "Creter Impact",
        "Men's Shoes",
        "men shoes",
        99.56, // Price as a double
      ),
      ProductModel(
        2,
        "assets/shoes_2.png",
        "Air - Max Pre Day",
        "Men's Shoes",
        "men shoes",
        137.56, // Price as a double
      ),
      ProductModel(
        3,
        "assets/shoes_3.png",
        "Air Max 51",
        "Men's Shoes",
        "men shoes",
        99.56, // Price as a double
      ),
      ProductModel(
        4,
        "assets/shoes_4.png",
        "EM Shoes",
        "Men's Shoes",
        "men shoes",
        212.56, // Price as a double
      ),
    ];
  }

  static List<ProductModel> generateCategories() {
    return [
      ProductModel(
        1,
        "assets/shoes_1.png",
        "Lifestyle",
        "Men's Shoes",
        "men shoes",
        99.56, // Price as a double
      ),
      ProductModel(
        2,
        "assets/shoes_2.png",
        "Basketball",
        "Men's Shoes",
        "men shoes",
        137.56, // Price as a double
      ),
      ProductModel(
        3,
        "assets/shoes_3.png",
        "Running",
        "Men's Shoes",
        "men shoes",
        99.56, // Price as a double
      ),
      ProductModel(
        4,
        "assets/shoes_4.png",
        "Rugby",
        "Men's Shoes",
        "men shoes",
        212.56, // Price as a double
      ),
    ];
  }
}

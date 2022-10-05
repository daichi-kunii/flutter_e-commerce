import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';
import 'package:flutter_ecommerce_app/src/model/asobi.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'バンシル',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/dog4.jpg',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'バンシル2',
        price: 220.00,
        isliked: false,
        image: 'assets/shoe_tilt_2.png',
        category: "Trending Now"),
  ];
  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'むぎたん',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/small_tilt_shoe_1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'むぎたん2',
        price: 190.00,
        isliked: false,
        image: 'assets/small_tilt_shoe_2.png',
        category: "Trending Now"),
    Product(
        id: 1,
        name: 'むぎたん37',
        price: 220.00,
        isliked: false,
        image: 'assets/small_tilt_shoe_3.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'ちゃちゃまる0',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/small_tilt_shoe_1.png',
        category: "Trending Now"),
    // Product(
    //     id:1,
    //     name: 'Nike Air Max 97',
    //     price: 190.00,
    //     isliked: false,
    //     image: 'assets/small_tilt_shoe_2.png',
    //     category: "Trending Now"),
  ];
  static List<Category> categoryList = [
    Category(),
    Category(id: 1, name: "小型犬", image: 'assets/dog1.jpg', isSelected: true),
    Category(id: 2, name: "中型犬", image: 'assets/dog2.jpg'),
    Category(id: 3, name: "大型犬", image: 'assets/dog3.jpg'),
    Category(id: 4, name: "むくむく犬", image: 'assets/dog3.jpg'),
    Category(id: 5, name: "その他", image: 'assets/dog4.jpg'),
  ];
  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];
  static List<Asobi> asobiList = [
    Asobi(),
    Asobi(id: 1, name: "小型犬", image: 'assets/dog1.jpg', isSelected: true),
    Asobi(id: 2, name: "中型犬", image: 'assets/dog2.jpg'),
  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}

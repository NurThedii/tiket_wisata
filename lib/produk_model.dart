import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> dummyProducts = [
  Product(
    name: "Tiket Pantai Indah",
    description: "Nikmati keindahan pantai dengan harga terjangkau.",
    price: 50000,
    imageUrl:
        "https://cdn.pixabay.com/photo/2016/11/18/18/39/beach-1836335_1280.jpg",
  ),
  Product(
    name: "Tiket Gunung Sejuk",
    description: "Jelajahi keindahan gunung dan udara segar.",
    price: 75000,
    imageUrl:
        "https://cdn.pixabay.com/photo/2021/06/08/09/21/mountain-6320288_1280.jpg",
  ),
  Product(
    name: "Tiket Taman Safari",
    description: "Temui hewan-hewan liar dalam habitat alami mereka.",
    price: 120000,
    imageUrl:
        "https://cdn.pixabay.com/photo/2020/04/08/06/57/zebras-5015976_1280.jpg",
  ),
];

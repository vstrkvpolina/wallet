import 'package:get/get.dart';

import '../controllers/pages_controller.dart';

import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';


class PagesView extends GetView<PagesController> {
  const PagesView({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, right: 0, top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wallet',
                  style: TextStyle(
                    fontSize: 45,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25), // Пространство между "Wallet" и следующим виджетом
          _buildAdditionalWidget(), // Дополнительный виджет с надписями и изображениями
        ],
      ),
    );
  }

  Widget _buildAdditionalWidget() {
    return Container(
      width: 385,
      height: 475, // второй виджет 95-98
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 189, 203, 209), // Цвет фона контейнера
        borderRadius: BorderRadius.circular(20), // Скругление углов контейнера
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 295,
            height: 90,
            child: Text(
              'Get Started With Apple Pay',
              style: TextStyle(
                fontSize: 40,
                color: const Color.fromARGB(255, 255, 255, 255)
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 1), // Пространство между заголовком и содержимым
          Row(
            children: [
              // Icon(Icons.info), // Иконка
              // SizedBox(width: 1), // Пространство между иконкой и текстом
              Image.asset('assets/images/applepay.png', width: 335, height: 350), // TODO
            ],
          ),
          Container(
            width: 385,
            height: 95,
            color: const Color.fromARGB(255, 181, 199, 207),
            child: Row(
              children: [
                // Icon(Icons.info), // Иконка
                // SizedBox(width: 15), // Пространство между иконкой и текстом
                Text(
                  'Add a credit or debit card to Wallet',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




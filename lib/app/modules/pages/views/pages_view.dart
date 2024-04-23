import 'dart:js';

import 'package:get/get.dart';
import '../controllers/pages_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesView extends GetView<PagesController> {
  const PagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, right: 0, top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wallet',
                  style: TextStyle(
                    fontSize: 45,
                    color: const Color.fromARGB(255, 251, 249, 249),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Действие при нажатии на голубой виджет
                        _viewCupertinoSheet(context);
                      },
                      child: Container(
                        // decoration: BoxDecoration(
                        //   shape: BoxShape.circle,
                        //   color: const Color.fromARGB(255, 149, 168, 176),
                        // ),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          CupertinoIcons.collections_solid,
                          color: const Color.fromARGB(255, 251, 249, 249),
                          size: 42,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    GestureDetector(
                      onTap: () {
                        // Действие при нажатии на надпись и кнопку "ADD"
                        _showCupertinoSheet(context);
                      },
                      child: Container(
                        // decoration: BoxDecoration(
                        //   shape: BoxShape.circle,
                        //   color: const Color.fromARGB(255, 149, 168, 176),
                        // ),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          CupertinoIcons.add_circled_solid,
                          color: const Color.fromARGB(255, 251, 249, 249),
                          size: 45,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              height: 25), // Пространство между "Wallet" и следующим виджетом
          _buildAdditionalWidget(), // Дополнительный виджет с надписями и изображениями
        ],
      ),
    );
  }

  Widget _buildAdditionalWidget() {
    return Container(
      width: 385,
      height: 475, // второй виджет 95-98
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 189, 203, 209), // Цвет фона контейнера
        borderRadius: BorderRadius.circular(20), // Скругление углов контейнера
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25, top: 25),
            width: 320,
            height: 110,
            child: Text(
              'Get Started With Apple Pay',
              style: TextStyle(
                fontSize: 38,
                color: Color.fromARGB(255, 251, 249, 249),
              ),
            ),
          ),
          SizedBox(height: 0), // Пространство между заголовком и содержимым
          Container(
            width: 385,
            height: 270,
            child: Row(
              children: [
                Image.asset('assets/images/applepay.png',
                    width: 380, height: 269),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color.fromARGB(255, 149, 168, 176),
            ),
            width: 385,
            height: 95,
            child: GestureDetector(
              onTap: () {
                _addCupertinoWidget();
              },
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 25, top: 27, bottom: 27, right: 25),
                    width: 231, // кнопка тогда 154
                    child: Text(
                      'Add a credit or debit card to Wallet',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, top: 31, right: 25, bottom: 31),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 255, 255, 255)),
                          width: 80,
                          height: 35,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 23, top: 8, right: 20, bottom: 8),
                            child: Text(
                              'ADD',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 10, 132, 255),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCupertinoSheet(BuildContext context) {
  // для плюсика
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) {
      return CupertinoActionSheet(
        actions: <Widget>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context); // Закрываем CupertinoActionSheet
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Text Here',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 5),
                          Text(
                            'Debit',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 176, 182, 197),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.check),
                          SizedBox(width: 5),
                          Text(
                            'Travel',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 176, 182, 197),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}




  void _viewCupertinoSheet(BuildContext context) {
    // для коробочки
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context); // Закрываем CupertinoActionSheet
              },
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 45, 49, 60),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _addCupertinoWidget() {
    // это для add надписи
    (BuildContext context) {
      return CupertinoActionSheet(
          //TODO
          );
    };
  }
}

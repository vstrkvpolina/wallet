import 'dart:js';

import 'package:get/get.dart';
import '../controllers/pages_controller.dart';
import 'package:flutter/cupertino.dart';


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
      return CupertinoTheme(
        data: CupertinoTheme.of(context).copyWith(
          brightness: Brightness.dark, // Настройте свою тему здесь
          scaffoldBackgroundColor: Color.fromARGB(255, 28, 28, 30), // Настройте свою тему здесь
        ),
        child: SizedBox(
          height: 900, // Задайте нужную высоту здесь
          child: CupertinoActionSheet(
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context); // Закрываем CupertinoActionSheet
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        //
                        // Icon(CupertinoIcons.add),
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 55, bottom: 4, right: 55, top: 75 ),
                          child: Row(
                            children: [
                              Text(
                                'Add to Wallet',
                                style: TextStyle(
                                  fontSize: 45,
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 30, right: 10, top: 15 ),
                      child: Row(
                        children: [
                          Text(
                            'Keep all the cards, keys and passes you use \n every day all in one place.',
                            style: TextStyle(
                              fontSize: 19,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, bottom: 8, right: 100, top: 10 ),
                      child: Row(
                        children: [
                          Text(
                            'Available Cards',
                            style: TextStyle(
                              fontSize: 25,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 380),
                      child: Row( // виджет с дебетовой картой и картой для путешествий
                        children: [
                          Container(
                            width: 394,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 44, 44, 46),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/card.png',
                                    width: 80, height: 80), // place for pic
                                    SizedBox(width: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, bottom: 20, right: 0, top: 20 ),
                                      child: Container(
                                        child: Text(
                                          'Debit or Credit Card',
                                          style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding( //
                                      padding: const EdgeInsets.only(left: 79),
                                      child: Container(
                                        
                                        child: Icon(
                                          CupertinoIcons.chevron_forward,
                                          color: Color.fromARGB(255, 84, 84, 86),
                                        ),
                                      ),
                                    ), // TODO
                                  ],
                                ),
                                SizedBox(height: 5), // Adjust this height as needed
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 60, bottom: 0, right: 0, top: 0 ),
                                      child: Container(
                                        width: 314,
                                        height: 1,
                                        color: const Color.fromARGB(255, 84, 84, 86),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/travel.png',
                                    width: 80, height: 80),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, bottom: 20, right: 0, top: 20 ),
                                      child: Container(
                                        child: Text(
                                          'Travel Card',
                                          style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding( //
                                      padding: const EdgeInsets.only(left: 154),
                                      child: Container(
                                        child: Icon(
                                          CupertinoIcons.chevron_forward,
                                          color: Color.fromARGB(255, 84, 84, 86),
                                        ),
                                      ),
                                    ), // TODO
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


//  void _showCupertinoSheet(BuildContext context) {
//   // для плюсика
//   showCupertinoModalPopup<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return CupertinoTheme(
//         data: CupertinoTheme.of(context).copyWith(
//           brightness: Brightness.dark, // Темная тема
//           scaffoldBackgroundColor: Color.fromARGB(255, 28, 28, 30), 
//         ),
//         child: CupertinoActionSheet(
//           actions: <Widget>[
//             CupertinoActionSheetAction(
//               onPressed: () {
//                 Navigator.pop(context); // Закрываем CupertinoActionSheet
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     child: Padding(
//                       //
//                       // Icon(CupertinoIcons.add),
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         padding: EdgeInsets.only(left: 60, bottom: 4, right: 60, top: 75 ),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Add to Wallet',
//                               style: TextStyle(
//                                 fontSize: 45,
//                                 color: const Color.fromARGB(255, 255, 255, 255),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 10, bottom: 30, right: 10, top: 15 ),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Keep all the cards, keys and passes you use \n every day all in one place.',
//                           style: TextStyle(
//                             fontSize: 19,
//                             color: const Color.fromARGB(255, 255, 255, 255),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 30, bottom: 8, right: 100, top: 10 ),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Available Cards',
//                           style: TextStyle(
//                             fontSize: 25,
//                           color: const Color.fromARGB(255, 255, 255, 255),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Row( // виджет с дебетовой картой и картой для путешествий
//                     children: [
//                       Container(
//                         width: 394,
//                         padding: EdgeInsets.only(left: 10, right: 10),
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 44, 44, 46),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Image.asset('assets/images/card.png',
//                                 width: 80, height: 80), // place for pic
//                                 SizedBox(width: 5),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 20, bottom: 20, right: 0, top: 20 ),
//                                   child: Container(
//                                     child: Text(
//                                       'Debit or Credit Card',
//                                       style: TextStyle(
//                                         fontSize: 19,
//                                         color: Color.fromARGB(255, 255, 255, 255),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding( //
//                                   padding: const EdgeInsets.only(left: 79),
//                                   child: Container(
                                    
//                                     child: Icon(
//                                       CupertinoIcons.chevron_forward,
//                                       color: Color.fromARGB(255, 84, 84, 86),
//                                     ),
//                                   ),
//                                 ), // TODO
//                               ],
//                             ),
//                             SizedBox(height: 5), // Adjust this height as needed
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 60, bottom: 0, right: 0, top: 0 ),
//                                   child: Container(
//                                     width: 314,
//                                     height: 1,
//                                     color: const Color.fromARGB(255, 84, 84, 86),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Image.asset('assets/images/travel.png',
//                                 width: 80, height: 80),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 20, bottom: 20, right: 0, top: 20 ),
//                                   child: Container(
//                                     child: Text(
//                                       'Travel Card',
//                                       style: TextStyle(
//                                         fontSize: 19,
//                                         color: Color.fromARGB(255, 255, 255, 255),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding( //
//                                   padding: const EdgeInsets.only(left: 154),
//                                   child: Container(
//                                     child: Icon(
//                                       CupertinoIcons.chevron_forward,
//                                       color: Color.fromARGB(255, 84, 84, 86),
//                                     ),
//                                   ),
//                                 ), // TODO
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }


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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../resources/color_res.dart';
import '../resources/text_style.dart';

Widget newItem(double size, BuildContext context, bool isLiked,
    void Function() onLikeChanged) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Container(
        width: MediaQuery.of(context).size.width * size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 20,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'lib/assets/image2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Container(
                        width: 26.0,
                        height: 26.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#E6F0F8"),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              onLikeChanged();
                            },
                            child: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: ColorRes.blue,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1200 сом",
                    style: TextStyleBold(
                        color: ColorRes.blue,
                        fontSize: 16.0,),
                  ),
                  Text(
                    "Держатель для лейки BOOU PG605",
                    style: TextStyleMedium(
                      color: ColorRes.dark,
                      fontSize: 14.0,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Доступно:",
                            style: TextStyleBold(
                              color: ColorRes.lightGray,
                              fontSize: 10.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.0),
                            child: Text(
                              "32",
                              style: TextStyleBold(
                                color: ColorRes.red,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorRes.blue,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
  );
}

Widget newItem2(double size, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Container(
        width: MediaQuery.of(context).size.width * size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 20,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/assets/image.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Text(
                  "Дарим подарки каждую неделю + 2 путеществие",
                  style: TextStyleRegular(
                    color: ColorRes.dark,
                    fontSize: 14.0,
                  ),
                ))
          ],
        )),
  );
}

Widget newItem4(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 20,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Stack(children: [
        Image.asset(
          'lib/assets/card.png',
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 26.0,
            left: 28.0,
            child: Text(
              'Привет Искендер!',
              style: TextStyleBold(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          child: Image.asset(
            'lib/assets/qr.png',
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Начисленных\nбонусов',
                textAlign: TextAlign.right,
                style: TextStyleBold(
                  color: ColorRes.blackGray,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                '7000с',
                style: TextStyleBold(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}

Widget newItem3(double size, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Container(
      width: MediaQuery.of(context).size.width * size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 20,
            offset: Offset(4, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Название магазина',
                  style: TextStyleMedium(
                    fontSize: 14.0,
                    color: ColorRes.blackBlue,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 20,
                          offset: Offset(4, 4), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.black, // Цвет иконки
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: ColorRes.gray,
                ),
                SizedBox(width: 8.0),
                Text(
                  'ул. Турусбекова A167',
                  style: TextStyleRegular(
                    fontSize: 12.0,
                    color: ColorRes.blackBlue,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.access_time_filled,
                  color: ColorRes.gray,
                ),
                SizedBox(width: 8.0),
                Text(
                  '08:00 - 22:00',
                  style: TextStyleMedium(
                    fontSize: 12.0,
                    color: ColorRes.gray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget newListView(Widget widget) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return widget;
    },
  );
}

Widget newColumn(
  Widget widget,
  double height,
  String text1,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: TextStyleExtraBold(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            Text(
              'Все',
              style: TextStyleMedium(
                  fontSize: 14.0,
                  color: ColorRes.blue),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Container(height: height, child: widget),
      )
    ],
  );
}

Widget newStories() {
  return Padding(
    padding: EdgeInsets.only(right: 14),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, // Цвет рамки
      ),
      child: Padding(
        padding: EdgeInsets.all(1),
        child: CircleAvatar(
          radius: 40.0,
          backgroundColor: ColorRes.blue, // Цвет рамки
          child: Padding(
            padding: EdgeInsets.all(4.0),
            // Пустое пространство между изображением и рамкой
            child: CircleAvatar(
              radius: 38.0,
              // Радиус внутреннего круга (изображение)
              backgroundImage: AssetImage(
                  'lib/assets/image.jpg'), // Замените на свою картинку
            ),
          ),
        ),
      ),
    ),
  );
}

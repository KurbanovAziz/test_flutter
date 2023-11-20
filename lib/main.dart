import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_flutter/resources/color_res.dart';
import 'package:test_flutter/resources/text_style.dart';
import 'package:test_flutter/utils/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool isLiked = false;

  void _incrementCounter() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'lib/assets/notifications.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            'lib/assets/bg_top.png',
            fit: BoxFit.fill,
            width: double.infinity,
             height: MediaQuery.of(context).size.height * 0.32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              children: [
                Container(height: 100, child: newListView(newStories())),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 36.0),
                  child: Container(height: 202, child: newItem4(context)),
                ),
                newColumn(newListView(newItem2(0.6, context)), 200,
                    'Новости и Акции'),
                Padding(
                  padding: EdgeInsets.only(top: 36.0, bottom: 24),
                  child: newColumn(
                      newListView(
                          newItem(0.43, context, isLiked, _incrementCounter)),
                      290,
                      'Хиты продаж'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Обработчик нажатия кнопки
                    },
                    style: ElevatedButton.styleFrom(
                      primary: ColorRes.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('lib/assets/catalog.svg', color: Colors.white),
                          SizedBox(width: 6.0),
                          Text(
                            'Перейти в Каталог',
                            style: TextStyleMedium(
                              fontSize: 20.0,
                              color: ColorRes.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 36.0, bottom: 24),
                  child: newColumn(
                      newListView(newItem3(0.7, context)), 150, 'Хиты продаж'),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/ic_main.svg',
              color: ColorRes.blue,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/shopping-bag.svg',
              color: ColorRes.blue,
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/location.svg',
              color: ColorRes.blue,
            ),
            label: 'Адреса',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(
              'lib/assets/profile.svg',
              color: ColorRes.blue,
            ),
            label: 'Профиль',
          ),
        ],
        selectedLabelStyle: TextStyleBold(
          color: ColorRes.blue,
          fontSize: 10.0,
        ),
        unselectedLabelStyle: TextStyleRegular(
          color: ColorRes.blue,
          fontSize: 10.0,
        ),
        unselectedItemColor: ColorRes.blue,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

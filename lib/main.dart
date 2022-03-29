// import 'package:base_5/pages/detail_page.dart';
// import 'package:base_5/pages/home.dart';
import 'package:base_5/pages/bar_item.dart';
import 'package:base_5/pages/detail_page.dart';
import 'package:base_5/pages/home.dart';
import 'package:base_5/pages/welcome.dart';
import 'package:base_5/states_manage/bar_item_state.dart';
import 'package:base_5/states_manage/detail_state.dart';
import 'package:base_5/states_manage/home_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
    providers: [
      // ChangeNotifierProvider(create: (_) => BarItemState(), child: const BarItemPage(),),
      // ChangeNotifierProvider(create: (_) => HomeState(), child: const HomePage(),),
      // ChangeNotifierProvider(create: (_) => DetailState(), child: const DetailPage(),)

      ChangeNotifierProvider(create: (_) => BarItemState(),),
      ChangeNotifierProvider(create: (_) => HomeState(),),
      ChangeNotifierProvider(create: (_) => DetailState(),)
    ],
    child: MyApp()
  )
);

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
      
    );
  }
}







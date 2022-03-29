import 'package:base_5/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:base_5/states_manage/bar_item_state.dart';
import 'package:provider/provider.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({ Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final barItemState = Provider.of<BarItemState>(context);
    return SafeArea(
      child: Scaffold(
        body: barItemState.listTabs[barItemState.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: barItemState.currentIndex,
          onTap: barItemState.changeIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.bigTextColor,
          unselectedItemColor: AppColors.mainTextColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Item'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
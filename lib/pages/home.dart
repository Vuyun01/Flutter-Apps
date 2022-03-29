import 'package:base_5/color/colors.dart';
import 'package:base_5/states_manage/home_state.dart';
import 'package:base_5/widgets/large_text.dart';
import 'package:base_5/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:base_5/widgets/circle_indicator.dart';
import 'package:base_5/widgets/location_items.dart';
import 'package:base_5/widgets/icon_items.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    final homestate = Provider.of<HomeState>(context);
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 8 ,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.menu,color: Colors.black54),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('assets/yourname.png'), fit: BoxFit.cover),
                    ),
                    
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 20),
              child: LargeText(text: 'Discover',)
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black45,
                  controller: _tabController,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleDrawIndicator(color: AppColors.mainColor, radius: 6),
                  tabs: const [
                    Tab(text: 'Places',),
                    Tab(text: 'Inspiration',),
                    Tab(text: 'Emotions',),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 30),
              height: 250, width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Consumer<HomeState>(
                    builder: ( _ , homestate , __ ) => ListView.builder(
                      itemCount: homestate.imageLocation.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ( _ , index) => ItemsLocation(
                        imageData: homestate.imageLocation[index],
                        textDestination: homestate.destination.keys.elementAt(index),
                        textLocation: homestate.destination.values.elementAt(index),
                      )
                      
                    ),
                  ),
                  Center(child: Text('Hello'),),
                  Center(child: Text('Hi there'),),
                ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LargeText(text: 'Explore more', size: 15),
                  TextButton(onPressed: (){}, child: SmallText(text: 'See all', color: Colors.cyan.shade600, size: 12,))
                ],
              ),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: Consumer<HomeState>(
                builder: ( _ , homestate , __ ) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homestate.icons.length,
                  itemBuilder: ( _ , index) => Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: IconItems(
                      text: homestate.icons.values.elementAt(index), 
                      iconImage: homestate.icons.keys.elementAt(index),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
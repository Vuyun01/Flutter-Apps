import 'package:base_5/color/colors.dart';
import 'package:base_5/states_manage/detail_state.dart';
import 'package:base_5/widgets/customize_button.dart';
import 'package:base_5/widgets/large_text.dart';
import 'package:base_5/widgets/responsive_button.dart';
import 'package:base_5/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final detailState = Provider.of<DetailState>(context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 0, left: 0,
              child: Container(
                height: size.height / 2,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mountain4.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              )
            ),
            Positioned(
              width: size.width,
              top: 30, left: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black54,)),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined, color: Colors.black54,))
                  ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.cyan.shade50,
                      Colors.white,
                      Colors.purple.shade50,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LargeText(text: 'Yosemite'),
                          LargeText(text: '\$ 250', color: AppColors.mainColor),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor,size: 15,),
                          SizedBox(width: 5,),
                          SmallText(text: 'USA, California', color: AppColors.mainColor, size: 10,)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Consumer<DetailState>(
                            builder: ( _ , detailState , __ ) => Wrap(
                              children: List.generate(5, (index) => Icon(
                                (index < detailState.emptyStars) ? Icons.star_rate_rounded : Icons.star_outline_rounded, 
                                size: 20, 
                                color: (index < detailState.emptyStars) ? Colors.orange.shade300 : Colors.grey,
                                )
                              ),
                            ),
                          ),
                          SmallText(text: '(4.0)', color: AppColors.mainTextColor, size: 12,),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(text: 'People', size: 17),
                          SizedBox(height: 8),
                          SmallText(text: 'Number of people in your group', size: 13, color: AppColors.mainTextColor)
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Consumer<DetailState>(
                        builder:( _ , detailState , __ ) => Wrap(
                          children: List.generate(12, (indexButton) => InkWell(
                            onTap: () => detailState.changeIndex(indexButton),
                            child: CustomizeButton(
                              isIconType: false,
                              text: '${indexButton+1}',
                              backgroundColor: detailState.selectedIndex == indexButton ? Colors.black : Colors.grey.shade300,
                              color: detailState.selectedIndex == indexButton ? Colors.white : Colors.black,
                              width: 50, height: 50,
                              radius: 15,
                            ),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(text: 'Description', size: 17),
                          SizedBox(height: 8),
                          SmallText(
                            text: 'Yosemite National Park is Located in the central of Sierra Nevada'
                                  'in the US state of California. It is located near the wild protected areas.', 
                            size: 13, color: AppColors.mainTextColor)
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer<DetailState>(
                            builder: ( _ , detailState , __ ) => InkWell(
                              onTap: detailState.changeBool,
                              child: CustomizeButton(
                                    isIconType: true,
                                    height: 60, width: 60,
                                    color: Colors.cyan.shade300,
                                    backgroundColor: detailState.favButtonState ? Colors.cyan.shade50 : Colors.white,
                                    icon: detailState.favButtonState ? Icons.favorite : Icons.favorite_border,
                                    borderColor: Colors.cyan.shade400,
                                    iconSize: 25,
                              )
                            ),
                          ),
                          ResponsiveButton(
                            isResponsive: true,
                            backgroundColor: AppColors.mainColor,
                            width: 250,
                            height: 60,
                            text: 'Book Trip Now',
                            textColor: Colors.white,
                            textSize: 12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
            // Positioned(
            //   bottom: 5, left: 20, right: 20,
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       InkWell(
            //         onTap: (){
            //           setState(() {
            //             favButtonState = !favButtonState;
            //           });
            //         },
            //         child: CustomizeButton(
            //           isIconType: true,
            //           height: 60, width: 60,
            //           color: Colors.cyan.shade300,
            //           backgroundColor: favButtonState ? Colors.cyan.shade50 : Colors.white,
            //           icon: favButtonState ? Icons.favorite : Icons.favorite_border,
            //           borderColor: Colors.cyan.shade400,
            //           iconSize: 25,
            //         ),
            //       ),
            //       ResponsiveButton(
            //         isResponsive: true,
            //         backgroundColor: bookTripButton ? 
            //                           AppColors.mainColor.withOpacity(0.7) 
            //                         : AppColors.mainColor,
            //         // width: 230,
            //         height: 60,
            //         text: 'Book Trip Now',
            //         textColor: Colors.white,
            //         textSize: 12,
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      )
    );
  }
}
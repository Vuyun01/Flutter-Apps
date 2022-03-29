import 'package:base_5/color/colors.dart';
import 'package:base_5/widgets/responsive_button.dart';
import 'package:base_5/pages/bar_item.dart';
import 'package:flutter/material.dart';
import 'package:base_5/widgets/large_text.dart';
import 'package:base_5/widgets/small_text.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final List<String> listImage = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listImage.length,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/'+listImage[index]),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 100,
                  left: 20, right: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LargeText(text: 'Trips', size: 25,),
                        SmallText(text: 'Travel Over The World', color: Colors.black87, size: 20,),
                        // SizedBox(height: 7,),
                        Container(
                          width: 250,
                          margin: const EdgeInsets.only(top: 15, bottom: 30),
                          child: SmallText(
                            text: 'Moutain hikes give you an incredible sense of freedom along with endurance tests',
                            color: Colors.black38,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(_).pushReplacement(MaterialPageRoute(
                              builder: (_) => BarItemPage()
                            ));
                          },
                          child: ResponsiveButton(isResponsive: false,width: 100, height: 60,backgroundColor: AppColors.mainColor,)
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexSlider) => Container(
                        width: 8, height: index == indexSlider ? 20 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == indexSlider ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.6)
                        ),
                      )),
                    )
                  ],
                ),
              ),
            );
          }
        )
      );
  }
}
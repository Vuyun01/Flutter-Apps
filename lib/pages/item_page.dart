import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              top: 20, left: 8,
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
          ],
        ),
      )
    );
  }
}
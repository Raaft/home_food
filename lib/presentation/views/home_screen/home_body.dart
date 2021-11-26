import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_food/Widget/custom_buttons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0E294E"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: -90,
            child: buildBackground(context),
          ),
          Positioned(
            bottom: -200,
            child: Image.asset(
              "assets/images/pngegg.png",
              height: 550,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  buildHeadRow(),
                  const SizedBox(height: 30),
                  const Text("Hello, Diana",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  const SizedBox(height: 20),
                  Container(
                    height: 5,
                    width: 90,
                    color: HexColor("#FDA124"),
                  ),
                  const SizedBox(height: 40),
                  Text("Earn points with your purchases",
                      style: TextStyle(
                        fontSize: 22,
                        color: HexColor("#FFFFFF"),
                      ),
                      textAlign: TextAlign.start),
                  const SizedBox(height: 70),
                  buildItemRow(),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBigCardContainer(context),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         buildSmallContainer(
                             context,
                             "assets/images/Mask Group 5@3x.png",
                             "Tenderloin pineapple",
                             "120.00",HexColor("#F89A9A")),
                         const SizedBox(height: 10),
                         buildSmallContainer(
                             context,
                             "assets/images/Mask Group 5@3x.png",
                             "Tenderloin pineapple",
                             "120.00",HexColor("#F4C264"))
                       ],)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                   Text("Best Meals",
                      style: TextStyle(
                          fontSize: 35,
                          color: HexColor("#022136"),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  const SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width ,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Mask Group 5@3x.png",
                          width: 100,
                        ),
                        Text(
                          "Enjoy delicious chicken For your family",
                          style: TextStyle(
                              fontSize: 11,
                              color: HexColor("#FFFFFF"),
                              fontWeight: FontWeight.normal),
                        ),                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

   buildSmallContainer(BuildContext context, img, title, price,color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * .38,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              img,
              width: 70,
            )),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 11,
                      color: HexColor("#0E294E"),
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "\$ ${price}",
                  style: TextStyle(
                      fontSize: 19,
                      color: HexColor("#0E294E"),
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildBigCardContainer(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "* Restrictions apply *",
              style: TextStyle(
                  fontSize: 9,
                  color: HexColor("#FFFFFF"),
                  fontWeight: FontWeight.normal),
            ),
            Center(
                child: Image.asset(
              "assets/images/Mask Group 5@3x.png",
              width: 100,
            )),
            Column(
              children: [
                Text(
                  "In salads and salmon",
                  style: TextStyle(
                      fontSize: 14,
                      color: HexColor("#022136"),
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "In meow everything is better",
                  style: TextStyle(
                      fontSize: 9,
                      color: HexColor("#859BAA"),
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "20% Discount",
                  style: TextStyle(
                      fontSize: 21,
                      color: HexColor("#022136"),
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * .35,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          border: Border.all(width: 3.0, color: HexColor("#F1A344")),
          borderRadius: const BorderRadius.all(
              Radius.circular(20) //                 <--- border radius here
              ),
        ));
  }

  Row buildItemRow() {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              ". Of the day",
              style: TextStyle(
                  fontSize: 14,
                  color: HexColor("#FDA020"),
                  fontWeight: FontWeight.bold),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              "Meals",
              style: TextStyle(
                  fontSize: 14,
                  color: HexColor("#FFFFFF"),
                  fontWeight: FontWeight.bold),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              "Breakfasts",
              style: TextStyle(
                  fontSize: 14,
                  color: HexColor("#FFFFFF"),
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  Row buildHeadRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            CircleAvatar(
              backgroundImage: ExactAssetImage(
                  'assets/images/WhatsApp Image 2021-03-15 at 10.10.34 PM@3x.png'),
              //    radius: 35,
            ),
            SizedBox(width: 20),
            CustomGeneralButton(
              width: 70,
              text: "500",
            )
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/images/Group 3996.svg",
              // height: 200,
            ),
            const SizedBox(width: 20),
            SvgPicture.asset(
              "assets/images/Icon feather-share-2.svg",
              //    height: 200,
            ),
          ],
        )
      ],
    );
  }

  Container buildBackground(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: HexColor("#0E294E"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          SvgPicture.asset(
            "assets/images/Group 7.svg",
            height: 200,
          ),
          SvgPicture.asset("assets/images/Group 6.svg", height: 200),
        ],
      ),
    );
  }
}

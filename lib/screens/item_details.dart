import 'package:colorful_iconify_flutter/icons/vscode_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demoapp/color_palette.dart';
import 'package:flutter_demoapp/models/coffee_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class ItemDetails extends StatefulWidget {
  final CoffeeItem cItem;
  const ItemDetails({super.key, required this.cItem});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.black,
          ),
          Hero(
            tag: widget.cItem.itemImg.toString(),
            child: Container(
              height: (screenHeight / 2) + 70.0,
              width: screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.cItem.itemImg.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 35.0,
            left: 20.0,
            child: Container(
              color: Colors.transparent,
              height: 50.0,
              width: screenWidth - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                          color: const Color(0xFF14181D),
                          border: Border.all(
                              color: const Color(0xFF322B2E), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF525154),
                        size: 17.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                          color: const Color(0xFF14181D),
                          border: Border.all(
                              color: const Color(0xFF322B2E), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: const Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFF525154),
                        size: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: (screenHeight / 2) - 30.0,
            child: GlassContainer(
              height: 150.0,
              width: screenWidth,
              blur: 4,
              border: const Border.fromBorderSide(BorderSide.none),
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.black.withOpacity(0.6),
              child: Container(
                height: 140,
                width: screenWidth - 20.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 25.0),
                      height: 140.0,
                      width: (screenWidth - 20.0) / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.cItem.title!,
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.cItem.subtitle!,
                            style: GoogleFonts.sourceSansPro(
                                color: const Color(0xFFADADAD), fontSize: 17.0),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: ColorPalette().coffeeSelected,
                                size: 22.0,
                              ),
                              const SizedBox(width: 10.0),
                              Text(
                                widget.cItem.rating.toString(),
                                style: GoogleFonts.sourceSansPro(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10.0),
                              Text(
                                '(6,986)',
                                style: GoogleFonts.sourceSansPro(
                                  color: const Color(0xFFADADAD),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25.0),
                      height: 140.0,
                      width: (screenWidth - 20.0) / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xFF0F1419),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Iconify(
                                      VscodeIcons.file_type_coffeescript,
                                      color: ColorPalette().coffeeSelected,
                                      size: 21.0,
                                    ),
                                    const SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      'Coffee',
                                      style: GoogleFonts.sourceSansPro(
                                        color: const Color(0xFF909193),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFF0F1419)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Iconify(
                                      Ic.round_water_drop,
                                      color: ColorPalette().coffeeSelected,
                                      size: 21.0,
                                    ),
                                    const SizedBox(height: 2.0),
                                    Text(
                                      'Milk',
                                      style: GoogleFonts.sourceSansPro(
                                        color: const Color(0xFF909193),
                                        fontSize: 12.0,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 35.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFF0F1419)),
                                child: Center(
                                  child: Text('Medium Roasted',
                                      style: GoogleFonts.sourceSansPro(
                                        color: const Color(0xFF909193),
                                        fontSize: 12.0,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + 140.0,
            child: Container(
              height: screenHeight / 2 - 140.0,
              width: screenWidth,
              child: ListView(
                padding: const EdgeInsets.only(left: 15.0),
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Description',
                        style: GoogleFonts.sourceSansPro(
                            color: const Color(0xFF999A9B), fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 50.0,
                        width: screenWidth - 30.0,
                        child: Text(
                          'A cappuccino is a coffee-based drink made primarily from espresso and milk',
                          style: GoogleFonts.sourceSansPro(
                              color: Colors.white, fontSize: 17.0),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Size',
                        style: GoogleFonts.sourceSansPro(
                            color: Color(0xFF999A9B), fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: screenWidth - 130.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildSizeButton('S', 0),
                            _buildSizeButton('M', 1),
                            _buildSizeButton('L', 2)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeButton(String title, int index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 4),
      curve: Curves.easeIn,
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          height: 40.0,
          width: 80.0,
          decoration: BoxDecoration(
            color:
                index == selectedIndex ? Colors.black : const Color(0xFF0D0F14),
            borderRadius: BorderRadius.circular(10.0),
            border: index == selectedIndex
                ? Border.all(
                    color: ColorPalette().coffeeSelected,
                    style: BorderStyle.solid,
                    width: 1.0)
                : Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 0.2,
                  ),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.sourceSansPro(
                  color: index == selectedIndex
                      ? ColorPalette().coffeeSelected
                      : const Color(0xFFADADAD),
                  fontSize: 15.0),
            ),
          ),
        ),
      ),
    );
  }
}

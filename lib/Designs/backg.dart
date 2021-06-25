import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_glow/flutter_glow.dart';

class backg extends StatefulWidget {
  backg({Key? key}) : super(key: key);

  @override
  _backggState createState() => _backggState();
}

class _backggState extends State<backg> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withBlue(10),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.cyan,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        width: 190,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              'Gaming computer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: GlowContainer(
                                width: 10,
                                height: 10,
                                color: Colors.black,
                                //glowColor: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Graphic cards',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'CPU\'s',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Container(
                        width: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              'News',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: GlowContainer(
                                width: 8,
                                height: 8,
                                color: Colors.pink,
                                glowColor: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  //color: Colors.yellow,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: Colors.black.withBlue(90),
                        height: 700,
                        width: 700,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('images/triangle.png'),
                            Image.asset(
                              'images/long.png',
                              color: Colors.cyan,
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.9),
                            ),
                            Container(
                              child: IndexedStack(
                                index: _index,
                                children: [
                                  Image.asset(
                                    'images/e2.png',
                                    width: 400,
                                    height: 400,
                                  ),
                                  Image.asset(
                                    'images/e3.png',
                                    width: 400,
                                    height: 400,
                                  ),
                                  Image.asset(
                                    'images/e1.png',
                                    width: 400,
                                    height: 400,
                                  ),
                                  Image.asset(
                                    'images/e4.png',
                                    width: 400,
                                    height: 400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        child: Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (_index == 3)
                                        _index = 0;
                                      else
                                        _index++;
                                    },
                                  );
                                },
                                icon: GlowIcon(
                                  Icons.arrow_back_ios,
                                  color: Colors.cyan,
                                  size: 50,
                                ),
                              ),
                              SizedBox(
                                width: 400,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (_index == 0)
                                        _index = 3;
                                      else
                                        _index--;
                                    },
                                  );
                                },
                                icon: GlowIcon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.pink,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 200,
                        bottom: 200,
                        child: Container(
                          //width: 300,
                          //height: 600,
                          //color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'special edition',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '\$1999',
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '\$2500',
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                              Text(
                                'Ci 3',
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GlowText(
                                'BUY NOW',
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                      color: Colors.cyan,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        bottom: 150,
                        child: Container(
                          //width: 300,
                          //height: 600,
                          //color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GlowText(
                                'Hyper Speed',
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    color: Colors.pinkAccent[400],
                                    fontSize: 50,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Model: Tensor 3710H-3417',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'CPU: Intel i3-9100F Tray 3.60',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'CPU Cooler: Deepcool CK-11508 115x/1200',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'MB: ASUS PRIME H310M-K R2.0 1151 ',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'RAM: Team Elite 8GB DDR4 2666 MHz',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'SSD: Team CX2 512GB Sata III',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'VGA: MSI GT 710 1GD3H LP 1GB',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Text(
                                'Case: Spire OEMJ1523B-500Z-E12 \n[p/n Tensor 3710H-3417] SKU:I22323',
                                style: GoogleFonts.openSansCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GlowContainer(
                                width: 50,
                                height: 50,
                                color: Colors.pink,
                                glowColor: Colors.pink,
                                shape: BoxShape.circle,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10,
                          bottom: 40,
                          child: Container(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GlowIcon(
                                  Icons.power,
                                  color: Colors.cyan,
                                  size: 35,
                                ),
                                GlowIcon(Icons.data_saver_off,
                                    color: Colors.cyan, size: 35),
                                GlowIcon(
                                  Icons.copyright,
                                  color: Colors.cyan,
                                  size: 35,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

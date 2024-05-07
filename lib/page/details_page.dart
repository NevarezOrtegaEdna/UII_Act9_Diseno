import 'package:flutter/material.dart';
import 'package:nevarez/core/color.dart';
import 'package:nevarez/data/plant_model.dart';

class DetailsPage extends StatelessWidget {
  final Casas casas;
  const DetailsPage({Key? key, required this.casas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      color: lightGreen,
                      boxShadow: [
                        BoxShadow(
                          color: green.withOpacity(0.2),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: AssetImage(casas.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 100.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: casas.name,
                                    style: TextStyle(
                                      color: black.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  (Casas ${casas.category})',
                                    style: TextStyle(
                                      color: black.withOpacity(0.5),
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 30.0,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: green,
                                boxShadow: [
                                  BoxShadow(
                                    color: green.withOpacity(0.2),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.asset(
                                'assets/icons/heart.png',
                                color: white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: casas.description,
                            style: TextStyle(
                              color: black.withOpacity(0.5),
                              fontSize: 15.0,
                              height: 1.4,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'Servicios',
                          style: TextStyle(
                            color: black.withOpacity(0.9),
                            fontSize: 18.0,
                            height: 1.4,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.verified_user,
                                color: Colors.black, size: 24.0),
                            Icon(Icons.wifi_rounded,
                                color: Colors.black, size: 24.0),
                            Icon(Icons.water_drop_rounded,
                                color: Colors.black, size: 24.0),
                            Icon(Icons.electric_bolt_rounded,
                                color: Colors.black, size: 24.0),
                          ],
                        )

                        //Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //children: [
                        // Image.asset('assets/icons/sun.png',
                        //   color: black, height: 24.0),
                        //Image.asset('assets/icons/drop.png',
                        //   color: black, height: 24.0),
                        //Image.asset('assets/icons/temperature.png',
                        //   color: black, height: 24.0),
                        //Image.asset('assets/icons/up_arrow.png',
                        // color: black, height: 24.0),
                        //],
                        //),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Image.asset('assets/icons/cart.png',
                    color: black, height: 40.0),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: green,
                  boxShadow: [
                    BoxShadow(
                      color: green.withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, -5),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Text(
                  'Precio \$${casas.price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: white.withOpacity(0.9),
                    fontSize: 18.0,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List viewList = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Current location',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff878787)),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/location.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Wallace, Australia',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff4C4DDC),
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    // padding: const EdgeInsets.only(top: 3),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEDEDED)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/Icon.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 52,
              child: TextFormField(
                cursorColor: const Color(0xff878787),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Color(0xff878787),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  hintText: 'Search Hotel',
                  prefixIcon: Image.asset('assets/images/search-normal.png'),
                  suffixIcon: Image.asset('assets/images/Iconn.png'),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nearby your location',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // row of text which up of slide  bar
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4C4DDC)),
                  ),
                ),
              ],
            ),
            Container(
              // height: 330,

              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                    height: 330,
                    child: PageView.builder(
                      itemCount: 5,
                      padEnds: false,
                      controller: PageController(
                          initialPage: 0, viewportFraction: 0.79),
                      itemBuilder: (BuildContext context, int index) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              margin: const EdgeInsets.only(right: 16),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: const Color(0xff878787),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 206,
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.asset(
                                      'assets/images/Image.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0,
                                        top: 12,
                                        bottom: 8,
                                        right: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'The Aston Vill Hotel',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/star.png',
                                            ),
                                            const Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      'Alice Springs NT 0870, Australia',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff878787)),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.0,
                                        top: 8,
                                        right: 12,
                                        bottom: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$165,3 ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff4C4DDC),
                                          ),
                                        ),
                                        Text(
                                          '/night ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff878787),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular Destination',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // row of text which up of slide  bar
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4C4DDC)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              height: 108,
              width: 327,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff878787)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Imagecopy.png'),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          // mainAxisAlignment:MainAxisAlignment.spaceBetween ,

                          children: [
                            Text(
                              'Asteria hotel',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 25),
                            Row(
                              children: [
                                Text(
                                  '\$165,3 ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff4C4DDC),
                                  ),
                                ),
                                Text(
                                  '/night ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff878787),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Wilora NT 0872, Australia',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5*20,
                              child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Image.asset('assets/images/star.png');
                                },
                              ),
                            ),
                            const Text(
                              '5.0',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

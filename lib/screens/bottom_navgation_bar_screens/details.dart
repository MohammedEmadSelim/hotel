import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Details extends StatelessWidget {
  Details({super.key});
  String text =
      'Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming Read More this coming words for display how the Text read more how it looks like';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/Menu.png'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 246,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Image.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/wifi.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Free Wifi',
                          style: TextStyle(
                            color: Color(0xff101010),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/coffee.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Free Breakfast',
                          style: TextStyle(
                            color: Color(0xff101010),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/star.png'),
                        const SizedBox(width: 8),
                        const Text(
                          '5.0',
                          style: TextStyle(
                            color: Color(0xff101010),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'The Aston Vill Hotel',
                  style: TextStyle(
                    color: Color(0xff101010),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$200,7 ',
                      style: TextStyle(
                        color: Color(0xff4C4DDC),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '/night',
                      style: TextStyle(
                        color: Color(0xff878787),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset('assets/images/location.png'),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Alice Springs NT 0870, Australia',
                  style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text(
                  'Description',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            ReadMoreText(
              text,
              trimLines: 3,
              style: const TextStyle(
                  color: Color(0xff878787),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: const TextStyle(
                color: Color(0xff4C4DDC),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              lessStyle: const TextStyle(
                color: Color(0xff4C4DDC),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 82,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 31),
                    height: 82,
                    width: 99,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Images.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // side: ,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),

                backgroundColor: const Color(0xff4C4DDC),
                minimumSize: const Size(397, 53),
              ),
              onPressed: () {},
              child: const Text(
                'Booking Now',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

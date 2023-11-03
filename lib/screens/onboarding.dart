import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group7.png'),
            const SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width,
            ),
            const Center(
              child: Text(
                'Let’s Find Your Sweet ',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const Center(
              child: Text(
                '& Dream Place',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Get the opportunity to stay that you dream of',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff787878)),
              ),
            ),
            const Center(
              child: Text(
                'at an affordable price',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff787878)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Rectangle26.png'),
                const SizedBox(width: 12),
                Image.asset('assets/images/Rectangle27.png'),
                const SizedBox(width: 12),
                Image.asset('assets/images/Rectangle27.png'),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff2C67FF)),
                  minimumSize: MaterialStatePropertyAll(Size(343, 45))),
              onPressed: () {},
              child: const Text(
                'Let’s Go',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

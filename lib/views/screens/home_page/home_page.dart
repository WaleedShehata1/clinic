// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/icon&text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          color: const Color(0xff0070CD),
          padding: const EdgeInsetsDirectional.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "أهلا و سهلا بيك",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 22,
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: (20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsetsDirectional.only(
                start: 5,
                end: 15,
              ),
              padding: const EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xffFF0000),
                  borderRadius: BorderRadius.circular(12)),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "اشتراك",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "يجب عليك التسجيل للاستمتاع بخدماتنا",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ]),
            ),
            SizedBox(
              child: iconText(
                margin: 30,
                text: 'احجز ميعاد مع طبيبك المختص',
                image: ImagesPath.home1,
              ),
            ),
            iconText(
              margin: 15,
              text: "احجز مكالمة مع طبيبك المختص",
              image: ImagesPath.home2,
            ),
            iconText(
              margin: 15,
              text: "احجز زيارة منزلية",
              image: ImagesPath.home3,
            ),
            iconText(
              margin: 15,
              text: "احجز عمل أشعة في منزلك",
              image: ImagesPath.home4,
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color(0xffD9D9D9),
              margin: const EdgeInsetsDirectional.only(
                top: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Text(
                "مقالات",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 118.h,
              margin: const EdgeInsets.all(10),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15).r,
              ),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  ImagesPath.home5,
                  width: 10.w,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

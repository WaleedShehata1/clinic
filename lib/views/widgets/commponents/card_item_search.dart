import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constant.dart';

Container cardItemSearch() {
  return Container(
    margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 5.h),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 2)
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(children: [
      Container(
        height: 105,
        padding: const EdgeInsetsDirectional.all(15),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: primerColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                  blurRadius: 2)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 25,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/Vector2.png",
                width: 25,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("Muli vitamins"),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 10, end: 20),
              child: Text("السعر بعد الخصم:250ُج"),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                const Text("قبل الخصم:280ج"),
                Container(
                  width: 100,
                  height: 2,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
      Image.asset(
        'assets/images/WhatsApp_Image_2024-03-03_at_7.31 1.png',
        width: 50,
      )
    ]),
  );
}

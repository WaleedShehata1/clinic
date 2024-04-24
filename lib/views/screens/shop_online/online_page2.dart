import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/commponents/card_item_search.dart';
import '../../widgets/commponents/constant.dart';
import '../../widgets/commponents/text_Form_Field.dart';

class OnlineShop2 extends StatelessWidget {
  const OnlineShop2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: primerColor,
              width: double.infinity,
              height: 65.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: primerColor,
                      )),
                  InkWell(
                    child: Image.asset(
                      ImagesPath.itemView,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Text(
                    "صيدليات أونلاين",
                    style: TextStyle(
                      color: primerColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50.h,
                    child: DefaultFormField(
                      radius: 20.r,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: primerColor,
                        size: 24.w,
                      ),
                      controller: TextEditingController(),
                      hint: "ابحث عن  الدواء",
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).r,
                      color: primerColor,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        ImagesPath.icMenu,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.691,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ListView.builder(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),

                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return cardItemSearch();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

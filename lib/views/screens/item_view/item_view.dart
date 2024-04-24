import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/commponents/constant.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xffFF0000),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      )),
                  InkWell(
                    child: Image.asset(
                      ImagesPath.visitings,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                        size: 30.w,
                      ))
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(10.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: const Radius.circular(20).r,
                      topEnd: const Radius.circular(20).r,
                    )),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "السعر بعد الخصم:250ُج",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.all(10.w),
                              decoration: BoxDecoration(
                                  color: primerColor,
                                  borderRadius: BorderRadius.circular(20).r),
                              child: Icon(
                                Icons.add_shopping_cart_rounded,
                                color: Colors.white,
                                size: 30.w,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                          padding: EdgeInsetsDirectional.only(
                              top: 5.h, bottom: 5.h, start: (66).w, end: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).r,
                              border:
                                  Border.all(color: primerColor, width: 2.w)),
                          child: Column(
                            children: [
                              Text(
                                "Muli vitamins",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: primerColor,
                                ),
                              ),
                              Text(
                                "30 Tabs",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: primerColor,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(vertical: 5.h),
                      padding: EdgeInsetsDirectional.all(15.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          border: Border.all(color: primerColor, width: 2.w)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "دواعي الأستخدام:",
                            style: TextStyle(
                              color: primerColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            " يوفر آلية تنفيذ الحجوزات بسلاسة شديدة ، و ما يتبع الحجز من خطوات سواء لتأكيد الحجز. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(vertical: 5.h),
                      padding: EdgeInsetsDirectional.all(5.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          border: Border.all(color: primerColor, width: 2.w)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "معلومات عن الصيدلية:",
                            style: TextStyle(
                              color: primerColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "اسم الصيدلية:",
                                    style: TextStyle(
                                      color: primerColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    "تبعد عنك:",
                                    style: TextStyle(
                                      color: primerColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "صيدلية المصري",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "30 كيلومتر",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(vertical: 5.h),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          border: Border.all(color: primerColor, width: 2.w)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "تاريخ انتهاء الصلاحية:",
                            style: TextStyle(
                              color: primerColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: SizedBox()),
                              Text(
                                " 2/3/2025",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(50.w),
          padding: EdgeInsets.all(20.w),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150).r, color: Colors.white),
          child: Image.asset(
            ImagesPath.itemView,
            width: 190.w,
            fit: BoxFit.contain,
          ),
        ),
      ]),
    );
  }
}
